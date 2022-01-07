
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int packet_dump (char*,int *,int ) ;
 int packet_log (char*,...) ;

__attribute__((used)) static void spu2_dump_omd(u8 *omd, u16 hash_key_len, u16 ciph_key_len,
     u16 hash_iv_len, u16 ciph_iv_len)
{
 u8 *ptr = omd;

 packet_log(" OMD:\n");

 if (hash_key_len) {
  packet_log("  Hash Key Length %u bytes\n", hash_key_len);
  packet_dump("  KEY: ", ptr, hash_key_len);
  ptr += hash_key_len;
 }

 if (ciph_key_len) {
  packet_log("  Cipher Key Length %u bytes\n", ciph_key_len);
  packet_dump("  KEY: ", ptr, ciph_key_len);
  ptr += ciph_key_len;
 }

 if (hash_iv_len) {
  packet_log("  Hash IV Length %u bytes\n", hash_iv_len);
  packet_dump("  hash IV: ", ptr, hash_iv_len);
  ptr += ciph_key_len;
 }

 if (ciph_iv_len) {
  packet_log("  Cipher IV Length %u bytes\n", ciph_iv_len);
  packet_dump("  cipher IV: ", ptr, ciph_iv_len);
 }
}
