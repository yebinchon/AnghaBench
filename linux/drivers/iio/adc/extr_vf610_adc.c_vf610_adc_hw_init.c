
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vf610_adc {int dummy; } ;


 int vf610_adc_calibration (struct vf610_adc*) ;
 int vf610_adc_cfg_post_set (struct vf610_adc*) ;
 int vf610_adc_cfg_set (struct vf610_adc*) ;
 int vf610_adc_sample_set (struct vf610_adc*) ;

__attribute__((used)) static void vf610_adc_hw_init(struct vf610_adc *info)
{

 vf610_adc_cfg_post_set(info);
 vf610_adc_sample_set(info);


 vf610_adc_calibration(info);


 vf610_adc_cfg_set(info);
}
