
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int u32 ;



uint32_t phm_set_field_to_u32(u32 offset, u32 original_data, u32 field, u32 size)
{
 u32 mask = 0;
 u32 shift = 0;

 shift = (offset % 4) << 3;
 if (size == sizeof(uint8_t))
  mask = 0xFF << shift;
 else if (size == sizeof(uint16_t))
  mask = 0xFFFF << shift;

 original_data &= ~mask;
 original_data |= (field << shift);
 return original_data;
}
