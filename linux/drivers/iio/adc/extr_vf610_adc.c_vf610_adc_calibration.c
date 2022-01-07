
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int calibration; } ;
struct vf610_adc {TYPE_1__ adc_feature; int dev; scalar_t__ regs; int completion; } ;


 int VF610_ADC_AIEN ;
 int VF610_ADC_CAL ;
 int VF610_ADC_CALF ;
 int VF610_ADC_CONV_DISABLE ;
 int VF610_ADC_TIMEOUT ;
 scalar_t__ VF610_REG_ADC_GC ;
 scalar_t__ VF610_REG_ADC_GS ;
 scalar_t__ VF610_REG_ADC_HC0 ;
 int dev_err (int ,char*) ;
 int readl (scalar_t__) ;
 int wait_for_completion_timeout (int *,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void vf610_adc_calibration(struct vf610_adc *info)
{
 int adc_gc, hc_cfg;

 if (!info->adc_feature.calibration)
  return;


 hc_cfg = VF610_ADC_AIEN | VF610_ADC_CONV_DISABLE;
 writel(hc_cfg, info->regs + VF610_REG_ADC_HC0);

 adc_gc = readl(info->regs + VF610_REG_ADC_GC);
 writel(adc_gc | VF610_ADC_CAL, info->regs + VF610_REG_ADC_GC);

 if (!wait_for_completion_timeout(&info->completion, VF610_ADC_TIMEOUT))
  dev_err(info->dev, "Timeout for adc calibration\n");

 adc_gc = readl(info->regs + VF610_REG_ADC_GS);
 if (adc_gc & VF610_ADC_CALF)
  dev_err(info->dev, "ADC calibration failed\n");

 info->adc_feature.calibration = 0;
}
