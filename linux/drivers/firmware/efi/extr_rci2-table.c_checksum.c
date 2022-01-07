
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;


 scalar_t__ rci2_base ;
 int rci2_table_len ;

__attribute__((used)) static u16 checksum(void)
{
 u8 len_is_odd = rci2_table_len % 2;
 u32 chksum_len = rci2_table_len;
 u16 *base = (u16 *)rci2_base;
 u8 buf[2] = {0};
 u32 offset = 0;
 u16 chksum = 0;

 if (len_is_odd)
  chksum_len -= 1;

 while (offset < chksum_len) {
  chksum += *base;
  offset += 2;
  base++;
 }

 if (len_is_odd) {
  buf[0] = *(u8 *)base;
  chksum += *(u16 *)(buf);
 }

 return chksum;
}
