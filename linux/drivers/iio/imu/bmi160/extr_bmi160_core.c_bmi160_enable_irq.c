
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 unsigned int BMI160_DRDY_INT_EN ;
 int BMI160_NORMAL_WRITE_USLEEP ;
 int BMI160_REG_INT_EN ;
 int bmi160_write_conf_reg (struct regmap*,int ,unsigned int,unsigned int,int ) ;

int bmi160_enable_irq(struct regmap *regmap, bool enable)
{
 unsigned int enable_bit = 0;

 if (enable)
  enable_bit = BMI160_DRDY_INT_EN;

 return bmi160_write_conf_reg(regmap, BMI160_REG_INT_EN,
         BMI160_DRDY_INT_EN, enable_bit,
         BMI160_NORMAL_WRITE_USLEEP);
}
