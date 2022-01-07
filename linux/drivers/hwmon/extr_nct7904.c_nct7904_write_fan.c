
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u8 ;
typedef int u32 ;
struct nct7904_data {int dummy; } ;
struct device {int dummy; } ;


 int BANK_1 ;
 int DIV_ROUND_CLOSEST (int,long) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int FANIN1_HV_HL_REG ;
 int FANIN1_LV_HL_REG ;
 long clamp_val (int ,int,int) ;
 struct nct7904_data* dev_get_drvdata (struct device*) ;

 int nct7904_write_reg (struct nct7904_data*,int ,int ,long) ;

__attribute__((used)) static int nct7904_write_fan(struct device *dev, u32 attr, int channel,
        long val)
{
 struct nct7904_data *data = dev_get_drvdata(dev);
 int ret;
 u8 tmp;

 switch (attr) {
 case 128:
  if (val <= 0)
   return -EINVAL;

  val = clamp_val(DIV_ROUND_CLOSEST(1350000, val), 1, 0x1fff);
  tmp = (val >> 5) & 0xff;
  ret = nct7904_write_reg(data, BANK_1,
     FANIN1_HV_HL_REG + channel * 2, tmp);
  if (ret < 0)
   return ret;
  tmp = val & 0x1f;
  ret = nct7904_write_reg(data, BANK_1,
     FANIN1_LV_HL_REG + channel * 2, tmp);
  return ret;
 default:
  return -EOPNOTSUPP;
 }
}
