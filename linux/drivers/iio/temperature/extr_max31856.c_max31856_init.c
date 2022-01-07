
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max31856_data {int thermocouple_type; } ;


 int MAX31856_CR0_1SHOT ;
 int MAX31856_CR0_AUTOCONVERT ;
 int MAX31856_CR0_OCFAULT ;
 int MAX31856_CR0_OCFAULT_MASK ;
 int MAX31856_CR0_REG ;
 int MAX31856_CR1_REG ;
 int MAX31856_TC_TYPE_MASK ;
 int max31856_read (struct max31856_data*,int ,int *,int) ;
 int max31856_write (struct max31856_data*,int ,int ) ;

__attribute__((used)) static int max31856_init(struct max31856_data *data)
{
 int ret;
 u8 reg_cr0_val, reg_cr1_val;





 ret = max31856_read(data, MAX31856_CR0_REG, &reg_cr0_val, 1);
 if (ret)
  return ret;

 reg_cr0_val &= ~MAX31856_CR0_AUTOCONVERT;
 ret = max31856_write(data, MAX31856_CR0_REG, reg_cr0_val);
 if (ret)
  return ret;


 ret = max31856_read(data, MAX31856_CR1_REG, &reg_cr1_val, 1);
 if (ret)
  return ret;

 reg_cr1_val &= ~MAX31856_TC_TYPE_MASK;
 reg_cr1_val |= data->thermocouple_type;
 ret = max31856_write(data, MAX31856_CR1_REG, reg_cr1_val);
 if (ret)
  return ret;






 reg_cr0_val &= ~MAX31856_CR0_OCFAULT_MASK;
 reg_cr0_val |= MAX31856_CR0_OCFAULT;


 reg_cr0_val &= ~MAX31856_CR0_1SHOT;
 reg_cr0_val |= MAX31856_CR0_AUTOCONVERT;

 return max31856_write(data, MAX31856_CR0_REG, reg_cr0_val);
}
