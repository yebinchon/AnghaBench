
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nct7904_data {int tcpu_mask; int temp_mode; int has_dts; int enable_dts; } ;
struct device {int dummy; } ;


 int BANK_0 ;
 int BANK_1 ;
 unsigned int DTS_T_CPU1_CH_REG ;
 unsigned int DTS_T_CPU1_C_REG ;
 unsigned int DTS_T_CPU1_WH_REG ;
 unsigned int DTS_T_CPU1_W_REG ;
 int ENABLE_TSI ;
 int EOPNOTSUPP ;
 unsigned int LTD_HV_HL_REG ;
 unsigned int LTD_HV_LL_REG ;
 int LTD_HV_REG ;
 unsigned int LTD_LV_HL_REG ;
 unsigned int LTD_LV_LL_REG ;
 unsigned int SMI_STS1_REG ;
 unsigned int SMI_STS3_REG ;
 int SMI_STS7_REG ;
 int SMI_STS8_REG ;
 unsigned int TEMP_CH1_CH_REG ;
 unsigned int TEMP_CH1_C_REG ;
 int TEMP_CH1_HV_REG ;
 unsigned int TEMP_CH1_WH_REG ;
 unsigned int TEMP_CH1_W_REG ;
 int T_CPU1_HV_REG ;
 struct nct7904_data* dev_get_drvdata (struct device*) ;







 int nct7904_read_reg (struct nct7904_data*,int ,unsigned int) ;
 int nct7904_read_reg16 (struct nct7904_data*,int ,int ) ;
 int sign_extend32 (int,int) ;

__attribute__((used)) static int nct7904_read_temp(struct device *dev, u32 attr, int channel,
        long *val)
{
 struct nct7904_data *data = dev_get_drvdata(dev);
 int ret, temp;
 unsigned int reg1, reg2, reg3;

 switch (attr) {
 case 131:
  if (channel == 4)
   ret = nct7904_read_reg16(data, BANK_0, LTD_HV_REG);
  else if (channel < 5)
   ret = nct7904_read_reg16(data, BANK_0,
       TEMP_CH1_HV_REG + channel * 4);
  else
   ret = nct7904_read_reg16(data, BANK_0,
       T_CPU1_HV_REG + (channel - 5)
       * 2);
  if (ret < 0)
   return ret;
  temp = ((ret & 0xff00) >> 5) | (ret & 0x7);
  *val = sign_extend32(temp, 10) * 125;
  return 0;
 case 134:
  if (channel == 4) {
   ret = nct7904_read_reg(data, BANK_0,
            SMI_STS3_REG);
   if (ret < 0)
    return ret;
   *val = (ret >> 1) & 1;
  } else if (channel < 4) {
   ret = nct7904_read_reg(data, BANK_0,
            SMI_STS1_REG);
   if (ret < 0)
    return ret;
   *val = (ret >> (((channel * 2) + 1) & 0x07)) & 1;
  } else {
   if ((channel - 5) < 4) {
    ret = nct7904_read_reg(data, BANK_0,
             SMI_STS7_REG +
             ((channel - 5) >> 3));
    if (ret < 0)
     return ret;
    *val = (ret >> ((channel - 5) & 0x07)) & 1;
   } else {
    ret = nct7904_read_reg(data, BANK_0,
             SMI_STS8_REG +
             ((channel - 5) >> 3));
    if (ret < 0)
     return ret;
    *val = (ret >> (((channel - 5) & 0x07) - 4))
       & 1;
   }
  }
  return 0;
 case 128:
  if (channel < 5) {
   if ((data->tcpu_mask >> channel) & 0x01) {
    if ((data->temp_mode >> channel) & 0x01)
     *val = 3;
    else
     *val = 4;
   } else {
    *val = 0;
   }
  } else {
   if ((data->has_dts >> (channel - 5)) & 0x01) {
    if (data->enable_dts & ENABLE_TSI)
     *val = 5;
    else
     *val = 6;
   } else {
    *val = 0;
   }
  }
  return 0;
 case 130:
  reg1 = LTD_HV_LL_REG;
  reg2 = TEMP_CH1_W_REG;
  reg3 = DTS_T_CPU1_W_REG;
  break;
 case 129:
  reg1 = LTD_LV_LL_REG;
  reg2 = TEMP_CH1_WH_REG;
  reg3 = DTS_T_CPU1_WH_REG;
  break;
 case 133:
  reg1 = LTD_HV_HL_REG;
  reg2 = TEMP_CH1_C_REG;
  reg3 = DTS_T_CPU1_C_REG;
  break;
 case 132:
  reg1 = LTD_LV_HL_REG;
  reg2 = TEMP_CH1_CH_REG;
  reg3 = DTS_T_CPU1_CH_REG;
  break;
 default:
  return -EOPNOTSUPP;
 }

 if (channel == 4)
  ret = nct7904_read_reg(data, BANK_1, reg1);
 else if (channel < 5)
  ret = nct7904_read_reg(data, BANK_1,
           reg2 + channel * 8);
 else
  ret = nct7904_read_reg(data, BANK_1,
           reg3 + (channel - 5) * 4);

 if (ret < 0)
  return ret;
 *val = ret * 1000;
 return 0;
}
