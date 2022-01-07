
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef size_t u16 ;



__attribute__((used)) static u16 raydium_calc_chksum(const u8 *buf, u16 len)
{
 u16 checksum = 0;
 u16 i;

 for (i = 0; i < len; i++)
  checksum += buf[i];

 return checksum;
}
