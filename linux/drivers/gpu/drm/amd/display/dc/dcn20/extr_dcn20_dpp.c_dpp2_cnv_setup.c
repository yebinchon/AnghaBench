
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct out_csc_color_matrix {int color_space; int * regval; } ;
struct dpp {int dummy; } ;
struct dcn20_dpp {int dummy; } ;
struct dc_csc_transform {int enable_adjustment; int * matrix; } ;
struct cnv_alpha_2bit_lut {int lut0; int lut1; int lut2; int lut3; } ;
typedef enum surface_pixel_format { ____Placeholder_surface_pixel_format } surface_pixel_format ;
typedef enum expansion_mode { ____Placeholder_expansion_mode } expansion_mode ;
typedef enum dcn10_input_csc_select { ____Placeholder_dcn10_input_csc_select } dcn10_input_csc_select ;
typedef enum dc_color_space { ____Placeholder_dc_color_space } dc_color_space ;


 int ALPHA_2BIT_LUT ;
 int ALPHA_2BIT_LUT0 ;
 int ALPHA_2BIT_LUT1 ;
 int ALPHA_2BIT_LUT2 ;
 int ALPHA_2BIT_LUT3 ;
 int CLAMP_POSITIVE ;
 int CLAMP_POSITIVE_C ;
 int CNVC_BYPASS ;
 int CNVC_BYPASS_MSB_ALIGN ;
 int CNVC_SURFACE_PIXEL_FORMAT ;
 int COLOR_SPACE_SRGB ;
 int COLOR_SPACE_YCBCR601 ;
 int COLOR_SPACE_YCBCR709 ;
 int CUR0_ENABLE ;
 int CURSOR0_CONTROL ;
 int CURSOR_CONTROL ;
 int CURSOR_ENABLE ;
 int FORMAT_CNV16 ;
 int FORMAT_CONTROL ;
 int FORMAT_CONTROL__ALPHA_EN ;
 int FORMAT_EXPANSION_MODE ;
 int INPUT_CSC_SELECT_BYPASS ;
 int INPUT_CSC_SELECT_ICSC ;
 int REG_SET (int ,int ,int ,int) ;
 int REG_SET_2 (int ,int ,int ,int ,int ,int) ;
 int REG_UPDATE (int ,int ,int) ;
 struct dcn20_dpp* TO_DCN20_DPP (struct dpp*) ;
 int dpp1_program_input_csc (struct dpp*,int,int,struct out_csc_color_matrix*) ;
 int dpp2_power_on_obuf (struct dpp*,int) ;

__attribute__((used)) static void dpp2_cnv_setup (
  struct dpp *dpp_base,
  enum surface_pixel_format format,
  enum expansion_mode mode,
  struct dc_csc_transform input_csc_color_matrix,
  enum dc_color_space input_color_space,
  struct cnv_alpha_2bit_lut *alpha_2bit_lut)
{
 struct dcn20_dpp *dpp = TO_DCN20_DPP(dpp_base);
 uint32_t pixel_format = 0;
 uint32_t alpha_en = 1;
 enum dc_color_space color_space = COLOR_SPACE_SRGB;
 enum dcn10_input_csc_select select = INPUT_CSC_SELECT_BYPASS;
 bool force_disable_cursor = 0;
 struct out_csc_color_matrix tbl_entry;
 uint32_t is_2bit = 0;
 int i = 0;

 REG_SET_2(FORMAT_CONTROL, 0,
  CNVC_BYPASS, 0,
  FORMAT_EXPANSION_MODE, mode);






 REG_UPDATE(FORMAT_CONTROL, FORMAT_CNV16, 0);
 REG_UPDATE(FORMAT_CONTROL, CNVC_BYPASS_MSB_ALIGN, 0);
 REG_UPDATE(FORMAT_CONTROL, CLAMP_POSITIVE, 0);
 REG_UPDATE(FORMAT_CONTROL, CLAMP_POSITIVE_C, 0);

 switch (format) {
 case 144:
  pixel_format = 1;
  break;
 case 135:
  pixel_format = 3;
  alpha_en = 0;
  break;
 case 140:
 case 145:
  pixel_format = 8;
  break;
 case 141:
 case 146:
  pixel_format = 10;
  is_2bit = 1;
  break;
 case 132:
  force_disable_cursor = 0;
  pixel_format = 65;
  color_space = COLOR_SPACE_YCBCR709;
  select = INPUT_CSC_SELECT_ICSC;
  break;
 case 131:
  force_disable_cursor = 1;
  pixel_format = 64;
  color_space = COLOR_SPACE_YCBCR709;
  select = INPUT_CSC_SELECT_ICSC;
  break;
 case 134:
  force_disable_cursor = 1;
  pixel_format = 67;
  color_space = COLOR_SPACE_YCBCR709;
  select = INPUT_CSC_SELECT_ICSC;
  break;
 case 133:
  force_disable_cursor = 1;
  pixel_format = 66;
  color_space = COLOR_SPACE_YCBCR709;
  select = INPUT_CSC_SELECT_ICSC;
  break;
 case 143:
  pixel_format = 22;
  break;
 case 142:
  pixel_format = 24;
  break;
 case 147:
  pixel_format = 25;
  break;
 case 129:
  pixel_format = 12;
  color_space = COLOR_SPACE_YCBCR709;
  select = INPUT_CSC_SELECT_ICSC;
  break;
 case 137:
  pixel_format = 112;
  break;
 case 139:
  pixel_format = 113;
  break;
 case 130:
  pixel_format = 114;
  color_space = COLOR_SPACE_YCBCR709;
  select = INPUT_CSC_SELECT_ICSC;
  is_2bit = 1;
  break;
 case 128:
  pixel_format = 115;
  color_space = COLOR_SPACE_YCBCR709;
  select = INPUT_CSC_SELECT_ICSC;
  is_2bit = 1;
  break;
 case 136:
  pixel_format = 118;
  break;
 case 138:
  pixel_format = 119;
  break;
 default:
  break;
 }

 if (is_2bit == 1 && alpha_2bit_lut != ((void*)0)) {
  REG_UPDATE(ALPHA_2BIT_LUT, ALPHA_2BIT_LUT0, alpha_2bit_lut->lut0);
  REG_UPDATE(ALPHA_2BIT_LUT, ALPHA_2BIT_LUT1, alpha_2bit_lut->lut1);
  REG_UPDATE(ALPHA_2BIT_LUT, ALPHA_2BIT_LUT2, alpha_2bit_lut->lut2);
  REG_UPDATE(ALPHA_2BIT_LUT, ALPHA_2BIT_LUT3, alpha_2bit_lut->lut3);
 }

 REG_SET(CNVC_SURFACE_PIXEL_FORMAT, 0,
   CNVC_SURFACE_PIXEL_FORMAT, pixel_format);
 REG_UPDATE(FORMAT_CONTROL, FORMAT_CONTROL__ALPHA_EN, alpha_en);


 if (input_csc_color_matrix.enable_adjustment
    == 1) {
  for (i = 0; i < 12; i++)
   tbl_entry.regval[i] = input_csc_color_matrix.matrix[i];

  tbl_entry.color_space = input_color_space;

  if (color_space >= COLOR_SPACE_YCBCR601)
   select = INPUT_CSC_SELECT_ICSC;
  else
   select = INPUT_CSC_SELECT_BYPASS;

  dpp1_program_input_csc(dpp_base, color_space, select, &tbl_entry);
 } else
 dpp1_program_input_csc(dpp_base, color_space, select, ((void*)0));

 if (force_disable_cursor) {
  REG_UPDATE(CURSOR_CONTROL,
    CURSOR_ENABLE, 0);
  REG_UPDATE(CURSOR0_CONTROL,
    CUR0_ENABLE, 0);

 }
 dpp2_power_on_obuf(dpp_base, 1);

}
