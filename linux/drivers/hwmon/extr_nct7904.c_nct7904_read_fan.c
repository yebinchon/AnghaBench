
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nct7904_data {int* fan_alarm; } ;
struct device {int dummy; } ;


 int BANK_0 ;
 int BANK_1 ;
 int EOPNOTSUPP ;
 int FANIN1_HV_HL_REG ;
 int FANIN1_HV_REG ;
 int SMI_STS5_REG ;
 struct nct7904_data* dev_get_drvdata (struct device*) ;



 int nct7904_read_reg (struct nct7904_data*,int ,int ) ;
 int nct7904_read_reg16 (struct nct7904_data*,int ,int ) ;

__attribute__((used)) static int nct7904_read_fan(struct device *dev, u32 attr, int channel,
       long *val)
{
 struct nct7904_data *data = dev_get_drvdata(dev);
 unsigned int cnt, rpm;
 int ret;

 switch (attr) {
 case 129:
  ret = nct7904_read_reg16(data, BANK_0,
      FANIN1_HV_REG + channel * 2);
  if (ret < 0)
   return ret;
  cnt = ((ret & 0xff00) >> 3) | (ret & 0x1f);
  if (cnt == 0x1fff)
   rpm = 0;
  else
   rpm = 1350000 / cnt;
  *val = rpm;
  return 0;
 case 128:
  ret = nct7904_read_reg16(data, BANK_1,
      FANIN1_HV_HL_REG + channel * 2);
  if (ret < 0)
   return ret;
  cnt = ((ret & 0xff00) >> 3) | (ret & 0x1f);
  if (cnt == 0x1fff)
   rpm = 0;
  else
   rpm = 1350000 / cnt;
  *val = rpm;
  return 0;
 case 130:
  ret = nct7904_read_reg(data, BANK_0,
           SMI_STS5_REG + (channel >> 3));
  if (ret < 0)
   return ret;
  if (!data->fan_alarm[channel >> 3])
   data->fan_alarm[channel >> 3] = ret & 0xff;
  else

   data->fan_alarm[channel >> 3] |= (ret & 0xff);
  *val = (data->fan_alarm[channel >> 3] >> (channel & 0x07)) & 1;

  if (*val)
   data->fan_alarm[channel >> 3] ^= 1 << (channel & 0x07);
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
