
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int ) ;
 int crc_itu_t (int ,int *,int) ;

int fw_compute_block_crc(__be32 *block)
{
 int length;
 u16 crc;

 length = (be32_to_cpu(block[0]) >> 16) & 0xff;
 crc = crc_itu_t(0, (u8 *)&block[1], length * 4);
 *block |= cpu_to_be32(crc);

 return length;
}
