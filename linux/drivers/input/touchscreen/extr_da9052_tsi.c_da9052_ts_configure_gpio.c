
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9052 {int dummy; } ;


 int DA9052_GPIO_2_3_REG ;
 int DA9052_GPIO_4_5_REG ;
 int DA9052_GPIO_6_7_REG ;
 int da9052_reg_update (struct da9052*,int ,int,int ) ;

__attribute__((used)) static int da9052_ts_configure_gpio(struct da9052 *da9052)
{
 int error;

 error = da9052_reg_update(da9052, DA9052_GPIO_2_3_REG, 0x30, 0);
 if (error < 0)
  return error;

 error = da9052_reg_update(da9052, DA9052_GPIO_4_5_REG, 0x33, 0);
 if (error < 0)
  return error;

 error = da9052_reg_update(da9052, DA9052_GPIO_6_7_REG, 0x33, 0);
 if (error < 0)
  return error;

 return 0;
}
