
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
typedef int __be16 ;


 scalar_t__ be16_to_cpu (int ) ;

__attribute__((used)) static u16 drx_u_code_compute_crc(u8 *block_data, u16 nr_words)
{
 u16 i = 0;
 u16 j = 0;
 u32 crc_word = 0;
 u32 carry = 0;

 while (i < nr_words) {
  crc_word |= (u32)be16_to_cpu(*(__be16 *)(block_data));
  for (j = 0; j < 16; j++) {
   crc_word <<= 1;
   if (carry != 0)
    crc_word ^= 0x80050000UL;
   carry = crc_word & 0x80000000UL;
  }
  i++;
  block_data += (sizeof(u16));
 }
 return (u16)(crc_word >> 16);
}
