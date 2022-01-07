
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx7d_adc {int channel; scalar_t__ regs; } ;


 scalar_t__ IMX7D_REG_ADC_CHA_B_CNV_RSLT ;
 scalar_t__ IMX7D_REG_ADC_CHC_D_CNV_RSLT ;
 int readl (scalar_t__) ;

__attribute__((used)) static int imx7d_adc_read_data(struct imx7d_adc *info)
{
 u32 channel;
 u32 value;

 channel = info->channel & 0x03;







 if (channel < 2)
  value = readl(info->regs + IMX7D_REG_ADC_CHA_B_CNV_RSLT);
 else
  value = readl(info->regs + IMX7D_REG_ADC_CHC_D_CNV_RSLT);
 if (channel & 0x1)
  value = (value >> 16) & 0xFFF;
 else
  value &= 0xFFF;

 return value;
}
