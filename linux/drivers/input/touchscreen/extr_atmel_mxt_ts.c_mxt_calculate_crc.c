
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int off_t ;


 int EINVAL ;
 int mxt_calc_crc24 (int*,int ,int ) ;

__attribute__((used)) static u32 mxt_calculate_crc(u8 *base, off_t start_off, off_t end_off)
{
 u32 crc = 0;
 u8 *ptr = base + start_off;
 u8 *last_val = base + end_off - 1;

 if (end_off < start_off)
  return -EINVAL;

 while (ptr < last_val) {
  mxt_calc_crc24(&crc, *ptr, *(ptr + 1));
  ptr += 2;
 }


 if (ptr == last_val)
  mxt_calc_crc24(&crc, *ptr, 0);


 crc &= 0x00FFFFFF;

 return crc;
}
