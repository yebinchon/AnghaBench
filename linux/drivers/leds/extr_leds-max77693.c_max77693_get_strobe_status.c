
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct max77693_led_device {struct regmap* regmap; } ;


 unsigned int FLASH_STATUS_FLASH_ON ;
 int MAX77693_LED_REG_FLASH_STATUS ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static int max77693_get_strobe_status(struct max77693_led_device *led,
     bool *state)
{
 struct regmap *rmap = led->regmap;
 unsigned int v;
 int ret;

 ret = regmap_read(rmap, MAX77693_LED_REG_FLASH_STATUS, &v);
 if (ret < 0)
  return ret;

 *state = v & FLASH_STATUS_FLASH_ON;

 return ret;
}
