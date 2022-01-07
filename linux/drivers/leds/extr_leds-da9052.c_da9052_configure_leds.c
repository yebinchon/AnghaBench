
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9052 {int dev; } ;


 int DA9052_GPIO_14_15_REG ;
 int DA9052_MASK_LOWER_NIBBLE ;
 int DA9052_MASK_UPPER_NIBBLE ;
 unsigned char DA9052_NIBBLE_SHIFT ;
 unsigned char DA9052_OPENDRAIN_OUTPUT ;
 unsigned char DA9052_SET_HIGH_LVL_OUTPUT ;
 int da9052_reg_update (struct da9052*,int ,int ,unsigned char) ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static int da9052_configure_leds(struct da9052 *da9052)
{
 int error;
 unsigned char register_value = DA9052_OPENDRAIN_OUTPUT
           | DA9052_SET_HIGH_LVL_OUTPUT;

 error = da9052_reg_update(da9052, DA9052_GPIO_14_15_REG,
      DA9052_MASK_LOWER_NIBBLE,
      register_value);

 if (error < 0) {
  dev_err(da9052->dev, "Failed to write GPIO 14-15 reg, %d\n",
   error);
  return error;
 }

 error = da9052_reg_update(da9052, DA9052_GPIO_14_15_REG,
      DA9052_MASK_UPPER_NIBBLE,
      register_value << DA9052_NIBBLE_SHIFT);
 if (error < 0)
  dev_err(da9052->dev, "Failed to write GPIO 14-15 reg, %d\n",
   error);

 return error;
}
