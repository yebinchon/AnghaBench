
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ina3221_data {int reg_config; } ;
struct device {int dummy; } ;


 long DIV_ROUND_CLOSEST (long,int) ;
 int EOPNOTSUPP ;
 int INA3221_CONFIG_AVG (int ) ;
 struct ina3221_data* dev_get_drvdata (struct device*) ;


 long* ina3221_avg_samples ;
 long ina3221_reg_to_interval_us (int ) ;

__attribute__((used)) static int ina3221_read_chip(struct device *dev, u32 attr, long *val)
{
 struct ina3221_data *ina = dev_get_drvdata(dev);
 int regval;

 switch (attr) {
 case 129:
  regval = INA3221_CONFIG_AVG(ina->reg_config);
  *val = ina3221_avg_samples[regval];
  return 0;
 case 128:

  *val = ina3221_reg_to_interval_us(ina->reg_config);
  *val = DIV_ROUND_CLOSEST(*val, 1000);
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
