
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;



__attribute__((used)) static u16 udl_lfsr16(u16 actual_count)
{
 u32 lv = 0xFFFF;

 while (actual_count--) {
  lv = ((lv << 1) |
   (((lv >> 15) ^ (lv >> 4) ^ (lv >> 2) ^ (lv >> 1)) & 1))
   & 0xFFFF;
 }

 return (u16) lv;
}
