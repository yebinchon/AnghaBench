
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm36274 {int num_leds; int* led_sources; int regmap; int dev; } ;


 int EINVAL ;
 int LM36274_BL_EN ;
 int LM36274_REG_BL_EN ;
 int dev_err (int ,char*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int lm36274_init(struct lm36274 *lm36274_data)
{
 int enable_val = 0;
 int i;

 for (i = 0; i < lm36274_data->num_leds; i++)
  enable_val |= (1 << lm36274_data->led_sources[i]);

 if (!enable_val) {
  dev_err(lm36274_data->dev, "No LEDs were enabled\n");
  return -EINVAL;
 }

 enable_val |= LM36274_BL_EN;

 return regmap_write(lm36274_data->regmap, LM36274_REG_BL_EN,
       enable_val);
}
