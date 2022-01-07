
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nct7904_data {int dummy; } ;
struct device {int dummy; } ;


 int BANK_1 ;
 int EOPNOTSUPP ;
 int VSEN1_HV_HL_REG ;
 int VSEN1_HV_LL_REG ;
 int VSEN1_LV_HL_REG ;
 int VSEN1_LV_LL_REG ;
 long clamp_val (long,int ,int) ;
 struct nct7904_data* dev_get_drvdata (struct device*) ;


 int* nct7904_chan_to_index ;
 int nct7904_read_reg (struct nct7904_data*,int ,int ) ;
 int nct7904_write_reg (struct nct7904_data*,int ,int ,int) ;

__attribute__((used)) static int nct7904_write_in(struct device *dev, u32 attr, int channel,
       long val)
{
 struct nct7904_data *data = dev_get_drvdata(dev);
 int ret, index, tmp;

 index = nct7904_chan_to_index[channel];

 if (index < 14)
  val = val / 2;
 else
  val = val / 6;

 val = clamp_val(val, 0, 0x7ff);

 switch (attr) {
 case 128:
  tmp = nct7904_read_reg(data, BANK_1,
           VSEN1_LV_LL_REG + index * 4);
  if (tmp < 0)
   return tmp;
  tmp &= ~0x7;
  tmp |= val & 0x7;
  ret = nct7904_write_reg(data, BANK_1,
     VSEN1_LV_LL_REG + index * 4, tmp);
  if (ret < 0)
   return ret;
  tmp = nct7904_read_reg(data, BANK_1,
           VSEN1_HV_LL_REG + index * 4);
  if (tmp < 0)
   return tmp;
  tmp = (val >> 3) & 0xff;
  ret = nct7904_write_reg(data, BANK_1,
     VSEN1_HV_LL_REG + index * 4, tmp);
  return ret;
 case 129:
  tmp = nct7904_read_reg(data, BANK_1,
           VSEN1_LV_HL_REG + index * 4);
  if (tmp < 0)
   return tmp;
  tmp &= ~0x7;
  tmp |= val & 0x7;
  ret = nct7904_write_reg(data, BANK_1,
     VSEN1_LV_HL_REG + index * 4, tmp);
  if (ret < 0)
   return ret;
  tmp = nct7904_read_reg(data, BANK_1,
           VSEN1_HV_HL_REG + index * 4);
  if (tmp < 0)
   return tmp;
  tmp = (val >> 3) & 0xff;
  ret = nct7904_write_reg(data, BANK_1,
     VSEN1_HV_HL_REG + index * 4, tmp);
  return ret;
 default:
  return -EOPNOTSUPP;
 }
}
