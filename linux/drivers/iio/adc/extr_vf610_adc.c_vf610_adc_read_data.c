
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int res_mode; } ;
struct vf610_adc {TYPE_1__ adc_feature; scalar_t__ regs; } ;


 scalar_t__ VF610_REG_ADC_R0 ;
 int readl (scalar_t__) ;

__attribute__((used)) static int vf610_adc_read_data(struct vf610_adc *info)
{
 int result;

 result = readl(info->regs + VF610_REG_ADC_R0);

 switch (info->adc_feature.res_mode) {
 case 8:
  result &= 0xFF;
  break;
 case 10:
  result &= 0x3FF;
  break;
 case 12:
  result &= 0xFFF;
  break;
 default:
  break;
 }

 return result;
}
