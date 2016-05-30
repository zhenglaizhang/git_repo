data = ARGV[0]
header = "blob #{data.length}\0"
store = header + data

require 'digest/sha1'
sha1 = digest::SHA1::hexdigest(store)

require 'zlib'
zlib_data = Zlib::Deflate::deflate(store)j