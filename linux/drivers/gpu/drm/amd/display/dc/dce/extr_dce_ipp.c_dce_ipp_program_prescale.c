
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipp_prescale_params {scalar_t__ mode; int bias; int scale; } ;
struct input_pixel_processor {int dummy; } ;
struct dce_ipp {int dummy; } ;


 int GRPH_INPUT_GAMMA_MODE ;
 int GRPH_PRESCALE_BIAS_B ;
 int GRPH_PRESCALE_BIAS_G ;
 int GRPH_PRESCALE_BIAS_R ;
 int GRPH_PRESCALE_BYPASS ;
 int GRPH_PRESCALE_SCALE_B ;
 int GRPH_PRESCALE_SCALE_G ;
 int GRPH_PRESCALE_SCALE_R ;
 int INPUT_GAMMA_CONTROL ;
 scalar_t__ IPP_PRESCALE_MODE_BYPASS ;
 int PRESCALE_GRPH_CONTROL ;
 int PRESCALE_VALUES_GRPH_B ;
 int PRESCALE_VALUES_GRPH_G ;
 int PRESCALE_VALUES_GRPH_R ;
 int REG_SET_2 (int ,int ,int ,int ,int ,int ) ;
 int REG_UPDATE (int ,int ,int) ;
 struct dce_ipp* TO_DCE_IPP (struct input_pixel_processor*) ;

__attribute__((used)) static void dce_ipp_program_prescale(struct input_pixel_processor *ipp,
         struct ipp_prescale_params *params)
{
 struct dce_ipp *ipp_dce = TO_DCE_IPP(ipp);


 REG_UPDATE(PRESCALE_GRPH_CONTROL,
     GRPH_PRESCALE_BYPASS, 1);

 REG_SET_2(PRESCALE_VALUES_GRPH_R, 0,
    GRPH_PRESCALE_SCALE_R, params->scale,
    GRPH_PRESCALE_BIAS_R, params->bias);

 REG_SET_2(PRESCALE_VALUES_GRPH_G, 0,
    GRPH_PRESCALE_SCALE_G, params->scale,
    GRPH_PRESCALE_BIAS_G, params->bias);

 REG_SET_2(PRESCALE_VALUES_GRPH_B, 0,
    GRPH_PRESCALE_SCALE_B, params->scale,
    GRPH_PRESCALE_BIAS_B, params->bias);

 if (params->mode != IPP_PRESCALE_MODE_BYPASS) {
  REG_UPDATE(PRESCALE_GRPH_CONTROL,
      GRPH_PRESCALE_BYPASS, 0);


  REG_UPDATE(INPUT_GAMMA_CONTROL,
      GRPH_INPUT_GAMMA_MODE, 1);
 }
}
