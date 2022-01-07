
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nct7904_data {long* fan_mode; } ;
struct device {int dummy; } ;


 int BANK_3 ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int FANCTL1_FMR_REG ;
 int FANCTL1_OUT_REG ;
 struct nct7904_data* dev_get_drvdata (struct device*) ;


 int nct7904_write_reg (struct nct7904_data*,int ,int ,long) ;

__attribute__((used)) static int nct7904_write_pwm(struct device *dev, u32 attr, int channel,
        long val)
{
 struct nct7904_data *data = dev_get_drvdata(dev);
 int ret;

 switch (attr) {
 case 128:
  if (val < 0 || val > 255)
   return -EINVAL;
  ret = nct7904_write_reg(data, BANK_3, FANCTL1_OUT_REG + channel,
     val);
  return ret;
 case 129:
  if (val < 1 || val > 2 ||
      (val == 2 && !data->fan_mode[channel]))
   return -EINVAL;
  ret = nct7904_write_reg(data, BANK_3, FANCTL1_FMR_REG + channel,
     val == 2 ? data->fan_mode[channel] : 0);
  return ret;
 default:
  return -EOPNOTSUPP;
 }
}
