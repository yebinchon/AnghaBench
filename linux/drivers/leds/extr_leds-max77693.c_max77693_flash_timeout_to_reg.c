
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int FLASH_TIMEOUT_MIN ;
 int FLASH_TIMEOUT_STEP ;

__attribute__((used)) static u8 max77693_flash_timeout_to_reg(u32 us)
{
 return (us - FLASH_TIMEOUT_MIN) / FLASH_TIMEOUT_STEP;
}
