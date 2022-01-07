
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct scaling_taps {int h_taps; int h_taps_c; } ;
struct fixed31_32 {int dummy; } ;
struct dcn20_dwbc {int dummy; } ;
typedef int int32_t ;


 int REG_UPDATE (int ,int ,int) ;
 int WBSCL_COEF_CHROMA_HORZ_FILTER ;
 int WBSCL_COEF_LUMA_HORZ_FILTER ;
 int WBSCL_HORZ_FILTER_INIT_CBCR ;
 int WBSCL_HORZ_FILTER_INIT_Y_RGB ;
 int WBSCL_HORZ_FILTER_SCALE_RATIO ;
 int WBSCL_H_INIT_FRAC_CBCR ;
 int WBSCL_H_INIT_FRAC_Y_RGB ;
 int WBSCL_H_INIT_INT_CBCR ;
 int WBSCL_H_INIT_INT_Y_RGB ;
 int WBSCL_H_NUM_OF_TAPS_CBCR ;
 int WBSCL_H_NUM_OF_TAPS_Y_RGB ;
 int WBSCL_H_SCALE_RATIO ;
 int WBSCL_TAP_CONTROL ;
 struct fixed31_32 dc_fixpt_add (struct fixed31_32,struct fixed31_32) ;
 struct fixed31_32 dc_fixpt_add_int (struct fixed31_32,int) ;
 struct fixed31_32 dc_fixpt_div_int (struct fixed31_32,int) ;
 int dc_fixpt_floor (struct fixed31_32) ;
 struct fixed31_32 dc_fixpt_from_fraction (int,int) ;
 struct fixed31_32 dc_fixpt_from_int (int) ;
 struct fixed31_32 dc_fixpt_mul_int (struct fixed31_32,int) ;
 int dc_fixpt_s4d19 (struct fixed31_32) ;
 struct fixed31_32 dc_fixpt_sub_int (struct fixed31_32,int) ;
 int dc_fixpt_u3d19 (struct fixed31_32) ;
 int * wbscl_get_filter_coeffs_16p (int,struct fixed31_32) ;
 int wbscl_set_scaler_filter (struct dcn20_dwbc*,int,int ,int const*) ;

bool dwb_program_horz_scalar(struct dcn20_dwbc *dwbc20,
  uint32_t src_width,
  uint32_t dest_width,
  struct scaling_taps num_taps)
{
 uint32_t h_ratio_luma = 1;
 uint32_t h_ratio_chroma = 1;
 uint32_t h_taps_luma = num_taps.h_taps;
 uint32_t h_taps_chroma = num_taps.h_taps_c;
 int32_t h_init_phase_luma = 0;
 int32_t h_init_phase_chroma = 0;
 uint32_t h_init_phase_luma_int = 0;
 uint32_t h_init_phase_luma_frac = 0;
 uint32_t h_init_phase_chroma_int = 0;
 uint32_t h_init_phase_chroma_frac = 0;
 const uint16_t *filter_h = ((void*)0);
 const uint16_t *filter_h_c = ((void*)0);


 struct fixed31_32 tmp_h_init_phase_luma = dc_fixpt_from_int(0);
 struct fixed31_32 tmp_h_init_phase_chroma = dc_fixpt_from_int(0);



 struct fixed31_32 tmp_h_ratio_luma = dc_fixpt_from_fraction(
  src_width, dest_width);

 if (dc_fixpt_floor(tmp_h_ratio_luma) == 8)
  h_ratio_luma = -1;
 else
  h_ratio_luma = dc_fixpt_u3d19(tmp_h_ratio_luma) << 5;
 h_ratio_chroma = h_ratio_luma * 2;


 REG_UPDATE(WBSCL_HORZ_FILTER_SCALE_RATIO, WBSCL_H_SCALE_RATIO, h_ratio_luma);


 REG_UPDATE(WBSCL_TAP_CONTROL, WBSCL_H_NUM_OF_TAPS_Y_RGB, h_taps_luma - 1);
 REG_UPDATE(WBSCL_TAP_CONTROL, WBSCL_H_NUM_OF_TAPS_CBCR, h_taps_chroma - 1);


 tmp_h_init_phase_luma = dc_fixpt_add_int(tmp_h_ratio_luma, h_taps_luma + 1);
 tmp_h_init_phase_luma = dc_fixpt_div_int(tmp_h_init_phase_luma, 2);
 tmp_h_init_phase_luma = dc_fixpt_sub_int(tmp_h_init_phase_luma, h_taps_luma);

 h_init_phase_luma = dc_fixpt_s4d19(tmp_h_init_phase_luma);
 h_init_phase_luma_int = (h_init_phase_luma >> 19) & 0x1f;
 h_init_phase_luma_frac = (h_init_phase_luma & 0x7ffff) << 5;

 tmp_h_init_phase_chroma = dc_fixpt_mul_int(tmp_h_ratio_luma, 2);
 tmp_h_init_phase_chroma = dc_fixpt_add_int(tmp_h_init_phase_chroma, h_taps_chroma + 1);
 tmp_h_init_phase_chroma = dc_fixpt_div_int(tmp_h_init_phase_chroma, 2);
 tmp_h_init_phase_chroma = dc_fixpt_sub_int(tmp_h_init_phase_chroma, h_taps_chroma);
 tmp_h_init_phase_chroma = dc_fixpt_add(tmp_h_init_phase_chroma, dc_fixpt_from_fraction(1, 4));

 h_init_phase_chroma = dc_fixpt_s4d19(tmp_h_init_phase_chroma);
 h_init_phase_chroma_int = (h_init_phase_chroma >> 19) & 0x1f;
 h_init_phase_chroma_frac = (h_init_phase_chroma & 0x7ffff) << 5;


 REG_UPDATE(WBSCL_HORZ_FILTER_INIT_Y_RGB, WBSCL_H_INIT_INT_Y_RGB, h_init_phase_luma_int);
 REG_UPDATE(WBSCL_HORZ_FILTER_INIT_Y_RGB, WBSCL_H_INIT_FRAC_Y_RGB, h_init_phase_luma_frac);
 REG_UPDATE(WBSCL_HORZ_FILTER_INIT_CBCR, WBSCL_H_INIT_INT_CBCR, h_init_phase_chroma_int);
 REG_UPDATE(WBSCL_HORZ_FILTER_INIT_CBCR, WBSCL_H_INIT_FRAC_CBCR, h_init_phase_chroma_frac);


 filter_h = wbscl_get_filter_coeffs_16p(
  h_taps_luma, tmp_h_ratio_luma);
 filter_h_c = wbscl_get_filter_coeffs_16p(
  h_taps_chroma, dc_fixpt_from_int(h_ratio_luma * 2));

 wbscl_set_scaler_filter(dwbc20, h_taps_luma,
  WBSCL_COEF_LUMA_HORZ_FILTER, filter_h);

 wbscl_set_scaler_filter(dwbc20, h_taps_chroma,
  WBSCL_COEF_CHROMA_HORZ_FILTER, filter_h_c);

 return 1;
}
