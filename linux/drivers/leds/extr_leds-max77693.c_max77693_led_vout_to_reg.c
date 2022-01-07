
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;


 int FLASH_VOUT_MIN ;
 scalar_t__ FLASH_VOUT_RMIN ;
 int FLASH_VOUT_STEP ;

__attribute__((used)) static inline u8 max77693_led_vout_to_reg(u32 mv)
{
 return (mv - FLASH_VOUT_MIN) / FLASH_VOUT_STEP + FLASH_VOUT_RMIN;
}
