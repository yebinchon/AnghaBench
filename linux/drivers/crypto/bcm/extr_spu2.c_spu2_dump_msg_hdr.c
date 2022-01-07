
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u64 ;
typedef unsigned int u16 ;
struct SPU2_FMD {int ctrl1; } ;


 unsigned int FMD_SIZE ;
 unsigned int SPU2_CIPH_KEY_LEN ;
 unsigned int SPU2_CIPH_KEY_LEN_SHIFT ;
 unsigned int SPU2_HASH_KEY_LEN ;
 unsigned int SPU2_HASH_KEY_LEN_SHIFT ;
 unsigned int SPU2_IV_LEN ;
 unsigned int SPU2_IV_LEN_SHIFT ;
 unsigned int le64_to_cpu (int ) ;
 int packet_log (char*,...) ;
 int spu2_dump_fmd (struct SPU2_FMD*) ;
 int spu2_dump_omd (int *,unsigned int,unsigned int,unsigned int,unsigned int) ;

void spu2_dump_msg_hdr(u8 *buf, unsigned int buf_len)
{
 struct SPU2_FMD *fmd = (struct SPU2_FMD *)buf;
 u8 *omd;
 u64 ctrl1;
 u16 hash_key_len;
 u16 ciph_key_len;
 u16 hash_iv_len;
 u16 ciph_iv_len;
 u16 omd_len;

 packet_log("\n");
 packet_log("SPU2 message header %p len: %u\n", buf, buf_len);

 spu2_dump_fmd(fmd);
 omd = (u8 *)(fmd + 1);

 ctrl1 = le64_to_cpu(fmd->ctrl1);
 hash_key_len = (ctrl1 & SPU2_HASH_KEY_LEN) >> SPU2_HASH_KEY_LEN_SHIFT;
 ciph_key_len = (ctrl1 & SPU2_CIPH_KEY_LEN) >> SPU2_CIPH_KEY_LEN_SHIFT;
 hash_iv_len = 0;
 ciph_iv_len = (ctrl1 & SPU2_IV_LEN) >> SPU2_IV_LEN_SHIFT;
 spu2_dump_omd(omd, hash_key_len, ciph_key_len, hash_iv_len,
        ciph_iv_len);


 omd_len = hash_key_len + ciph_key_len + hash_iv_len + ciph_iv_len;
 if (FMD_SIZE + omd_len != buf_len) {
  packet_log
      (" Packet parsed incorrectly. buf_len %u, sum of MD %zu\n",
       buf_len, FMD_SIZE + omd_len);
 }
 packet_log("\n");
}
