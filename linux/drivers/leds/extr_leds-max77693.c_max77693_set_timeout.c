
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct regmap {int dummy; } ;
struct max77693_led_device {int current_flash_timeout; struct regmap* regmap; } ;


 int FLASH_TMR_LEVEL ;
 int MAX77693_LED_REG_FLASH_TIMER ;
 int max77693_flash_timeout_to_reg (int ) ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static int max77693_set_timeout(struct max77693_led_device *led, u32 microsec)
{
 struct regmap *rmap = led->regmap;
 u8 v;
 int ret;

 v = max77693_flash_timeout_to_reg(microsec) | FLASH_TMR_LEVEL;

 ret = regmap_write(rmap, MAX77693_LED_REG_FLASH_TIMER, v);
 if (ret < 0)
  return ret;

 led->current_flash_timeout = microsec;

 return 0;
}
