
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nct7904_data {int dummy; } ;
struct device {int dummy; } ;


 int BANK_1 ;
 unsigned int DTS_T_CPU1_CH_REG ;
 unsigned int DTS_T_CPU1_C_REG ;
 unsigned int DTS_T_CPU1_WH_REG ;
 unsigned int DTS_T_CPU1_W_REG ;
 int EOPNOTSUPP ;
 unsigned int LTD_HV_HL_REG ;
 unsigned int LTD_HV_LL_REG ;
 unsigned int LTD_LV_HL_REG ;
 unsigned int LTD_LV_LL_REG ;
 unsigned int TEMP_CH1_CH_REG ;
 unsigned int TEMP_CH1_C_REG ;
 unsigned int TEMP_CH1_WH_REG ;
 unsigned int TEMP_CH1_W_REG ;
 long clamp_val (long,int,int) ;
 struct nct7904_data* dev_get_drvdata (struct device*) ;




 int nct7904_write_reg (struct nct7904_data*,int ,unsigned int,long) ;

__attribute__((used)) static int nct7904_write_temp(struct device *dev, u32 attr, int channel,
         long val)
{
 struct nct7904_data *data = dev_get_drvdata(dev);
 int ret;
 unsigned int reg1, reg2, reg3;

 val = clamp_val(val / 1000, -128, 127);

 switch (attr) {
 case 129:
  reg1 = LTD_HV_LL_REG;
  reg2 = TEMP_CH1_W_REG;
  reg3 = DTS_T_CPU1_W_REG;
  break;
 case 128:
  reg1 = LTD_LV_LL_REG;
  reg2 = TEMP_CH1_WH_REG;
  reg3 = DTS_T_CPU1_WH_REG;
  break;
 case 131:
  reg1 = LTD_HV_HL_REG;
  reg2 = TEMP_CH1_C_REG;
  reg3 = DTS_T_CPU1_C_REG;
  break;
 case 130:
  reg1 = LTD_LV_HL_REG;
  reg2 = TEMP_CH1_CH_REG;
  reg3 = DTS_T_CPU1_CH_REG;
  break;
 default:
  return -EOPNOTSUPP;
 }
 if (channel == 4)
  ret = nct7904_write_reg(data, BANK_1, reg1, val);
 else if (channel < 5)
  ret = nct7904_write_reg(data, BANK_1,
     reg2 + channel * 8, val);
 else
  ret = nct7904_write_reg(data, BANK_1,
     reg3 + (channel - 5) * 4, val);

 return ret;
}
