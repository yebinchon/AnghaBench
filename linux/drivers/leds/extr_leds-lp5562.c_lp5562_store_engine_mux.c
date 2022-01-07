
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp55xx_led {struct lp55xx_chip* chip; } ;
struct lp55xx_chip {int engine_idx; int lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
typedef enum lp55xx_engine_index { ____Placeholder_lp55xx_engine_index } lp55xx_engine_index ;


 size_t EINVAL ;
 int LP5562_ENG1_FOR_W ;
 int LP5562_ENG2_FOR_W ;
 int LP5562_ENG3_FOR_W ;
 int LP5562_ENG_FOR_RGB_M ;
 int LP5562_ENG_FOR_W_M ;
 int LP5562_ENG_SEL_RGB ;
 int LP5562_REG_ENG_SEL ;



 int dev_err (struct device*,char*) ;
 struct lp55xx_led* i2c_get_clientdata (int ) ;
 int lp55xx_update_bits (struct lp55xx_chip*,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ sysfs_streq (char const*,char*) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t lp5562_store_engine_mux(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t len)
{
 struct lp55xx_led *led = i2c_get_clientdata(to_i2c_client(dev));
 struct lp55xx_chip *chip = led->chip;
 u8 mask;
 u8 val;
 if (sysfs_streq(buf, "RGB")) {
  mask = LP5562_ENG_FOR_RGB_M;
  val = LP5562_ENG_SEL_RGB;
 } else if (sysfs_streq(buf, "W")) {
  enum lp55xx_engine_index idx = chip->engine_idx;

  mask = LP5562_ENG_FOR_W_M;
  switch (idx) {
  case 130:
   val = LP5562_ENG1_FOR_W;
   break;
  case 129:
   val = LP5562_ENG2_FOR_W;
   break;
  case 128:
   val = LP5562_ENG3_FOR_W;
   break;
  default:
   return -EINVAL;
  }

 } else {
  dev_err(dev, "choose RGB or W\n");
  return -EINVAL;
 }

 mutex_lock(&chip->lock);
 lp55xx_update_bits(chip, LP5562_REG_ENG_SEL, mask, val);
 mutex_unlock(&chip->lock);

 return len;
}
