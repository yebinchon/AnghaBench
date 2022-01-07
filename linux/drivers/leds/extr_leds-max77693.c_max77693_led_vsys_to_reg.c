
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int MAX_FLASH1_VSYS_MIN ;
 int MAX_FLASH1_VSYS_STEP ;

__attribute__((used)) static inline u8 max77693_led_vsys_to_reg(u32 mv)
{
 return ((mv - MAX_FLASH1_VSYS_MIN) / MAX_FLASH1_VSYS_STEP) << 2;
}
