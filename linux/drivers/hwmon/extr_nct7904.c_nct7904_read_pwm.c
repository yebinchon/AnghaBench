
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nct7904_data {int dummy; } ;
struct device {int dummy; } ;


 int BANK_3 ;
 int EOPNOTSUPP ;
 int FANCTL1_FMR_REG ;
 int FANCTL1_OUT_REG ;
 struct nct7904_data* dev_get_drvdata (struct device*) ;


 int nct7904_read_reg (struct nct7904_data*,int ,int ) ;

__attribute__((used)) static int nct7904_read_pwm(struct device *dev, u32 attr, int channel,
       long *val)
{
 struct nct7904_data *data = dev_get_drvdata(dev);
 int ret;

 switch (attr) {
 case 128:
  ret = nct7904_read_reg(data, BANK_3, FANCTL1_OUT_REG + channel);
  if (ret < 0)
   return ret;
  *val = ret;
  return 0;
 case 129:
  ret = nct7904_read_reg(data, BANK_3, FANCTL1_FMR_REG + channel);
  if (ret < 0)
   return ret;

  *val = ret ? 2 : 1;
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
