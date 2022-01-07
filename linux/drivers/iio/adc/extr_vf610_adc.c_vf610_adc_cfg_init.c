
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vf610_adc_feature {int calibration; int ovwren; int res_mode; int sample_rate; int conv_mode; int vol_ref; int clk_sel; } ;
struct vf610_adc {struct vf610_adc_feature adc_feature; } ;


 int VF610_ADCIOC_BUSCLK_SET ;
 int VF610_ADCIOC_VR_VREF_SET ;
 int VF610_ADC_CONV_LOW_POWER ;
 int vf610_adc_calculate_rates (struct vf610_adc*) ;

__attribute__((used)) static inline void vf610_adc_cfg_init(struct vf610_adc *info)
{
 struct vf610_adc_feature *adc_feature = &info->adc_feature;


 adc_feature->clk_sel = VF610_ADCIOC_BUSCLK_SET;
 adc_feature->vol_ref = VF610_ADCIOC_VR_VREF_SET;

 adc_feature->calibration = 1;
 adc_feature->ovwren = 1;

 adc_feature->res_mode = 12;
 adc_feature->sample_rate = 1;

 adc_feature->conv_mode = VF610_ADC_CONV_LOW_POWER;

 vf610_adc_calculate_rates(info);
}
