
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct SPU2_FMD {int ctrl2; } ;


 int SPU2_AAD1_LEN_SHIFT ;
 int SPU2_AAD2_OFFSET_SHIFT ;
 int SPU2_PL_OFFSET_SHIFT ;
 int cpu_to_le64 (int) ;

__attribute__((used)) static void spu2_fmd_ctrl2_write(struct SPU2_FMD *fmd, u64 cipher_offset,
     u64 auth_key_len, u64 auth_iv_len,
     u64 cipher_key_len, u64 cipher_iv_len)
{
 u64 ctrl2;
 u64 aad1_offset;
 u64 aad2_offset;
 u16 aad1_len = 0;
 u64 payload_offset;


 aad1_offset = 0;

 aad2_offset = aad1_offset;
 payload_offset = cipher_offset;
 ctrl2 = aad1_offset |
     (aad1_len << SPU2_AAD1_LEN_SHIFT) |
     (aad2_offset << SPU2_AAD2_OFFSET_SHIFT) |
     (payload_offset << SPU2_PL_OFFSET_SHIFT);

 fmd->ctrl2 = cpu_to_le64(ctrl2);
}
