
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nct7904_data {int* vsen_alarm; } ;
struct device {int dummy; } ;


 int BANK_0 ;
 int BANK_1 ;
 int EOPNOTSUPP ;
 int SMI_STS1_REG ;
 int VSEN1_HV_HL_REG ;
 int VSEN1_HV_LL_REG ;
 int VSEN1_HV_REG ;
 struct nct7904_data* dev_get_drvdata (struct device*) ;




 int* nct7904_chan_to_index ;
 int nct7904_read_reg (struct nct7904_data*,int ,int ) ;
 int nct7904_read_reg16 (struct nct7904_data*,int ,int ) ;

__attribute__((used)) static int nct7904_read_in(struct device *dev, u32 attr, int channel,
      long *val)
{
 struct nct7904_data *data = dev_get_drvdata(dev);
 int ret, volt, index;

 index = nct7904_chan_to_index[channel];

 switch (attr) {
 case 130:
  ret = nct7904_read_reg16(data, BANK_0,
      VSEN1_HV_REG + index * 2);
  if (ret < 0)
   return ret;
  volt = ((ret & 0xff00) >> 5) | (ret & 0x7);
  if (index < 14)
   volt *= 2;
  else
   volt *= 6;
  *val = volt;
  return 0;
 case 128:
  ret = nct7904_read_reg16(data, BANK_1,
      VSEN1_HV_LL_REG + index * 4);
  if (ret < 0)
   return ret;
  volt = ((ret & 0xff00) >> 5) | (ret & 0x7);
  if (index < 14)
   volt *= 2;
  else
   volt *= 6;
  *val = volt;
  return 0;
 case 129:
  ret = nct7904_read_reg16(data, BANK_1,
      VSEN1_HV_HL_REG + index * 4);
  if (ret < 0)
   return ret;
  volt = ((ret & 0xff00) >> 5) | (ret & 0x7);
  if (index < 14)
   volt *= 2;
  else
   volt *= 6;
  *val = volt;
  return 0;
 case 131:
  ret = nct7904_read_reg(data, BANK_0,
           SMI_STS1_REG + (index >> 3));
  if (ret < 0)
   return ret;
  if (!data->vsen_alarm[index >> 3])
   data->vsen_alarm[index >> 3] = ret & 0xff;
  else

   data->vsen_alarm[index >> 3] |= (ret & 0xff);
  *val = (data->vsen_alarm[index >> 3] >> (index & 0x07)) & 1;

  if (*val)
   data->vsen_alarm[index >> 3] ^= 1 << (index & 0x07);
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
