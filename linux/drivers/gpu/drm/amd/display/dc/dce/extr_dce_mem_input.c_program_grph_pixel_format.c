
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dce_mem_input {int dummy; } ;
typedef enum surface_pixel_format { ____Placeholder_surface_pixel_format } surface_pixel_format ;


 int DC_ERR (char*) ;
 int GRPH_BLUE_CROSSBAR ;
 int GRPH_CONTROL ;
 int GRPH_DEPTH ;
 int GRPH_FORMAT ;
 int GRPH_PRESCALE_B_SIGN ;
 int GRPH_PRESCALE_G_SIGN ;
 int GRPH_PRESCALE_R_SIGN ;
 int GRPH_PRESCALE_SELECT ;
 int GRPH_RED_CROSSBAR ;
 int GRPH_SWAP_CNTL ;
 int PRESCALE_GRPH_CONTROL ;
 int REG_SET_2 (int ,int ,int ,int,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 int REG_UPDATE_4 (int ,int ,int,int ,int,int ,int,int ,int) ;
__attribute__((used)) static void program_grph_pixel_format(
 struct dce_mem_input *dce_mi,
 enum surface_pixel_format format)
{
 uint32_t red_xbar = 0, blue_xbar = 0;
 uint32_t grph_depth = 0, grph_format = 0;
 uint32_t sign = 0, floating = 0;

 if (format == 135 ||


  format == 137 ||
  format == 136 ||
  format == 138) {

  red_xbar = 2;
  blue_xbar = 2;
 }

 REG_SET_2(GRPH_SWAP_CNTL, 0,
   GRPH_RED_CROSSBAR, red_xbar,
   GRPH_BLUE_CROSSBAR, blue_xbar);

 switch (format) {
 case 129:
  grph_depth = 0;
  grph_format = 0;
  break;
 case 134:
  grph_depth = 1;
  grph_format = 0;
  break;
 case 128:
  grph_depth = 1;
  grph_format = 1;
  break;
 case 130:
 case 135:
  grph_depth = 2;
  grph_format = 0;
  break;
 case 131:
 case 137:
 case 136:
  grph_depth = 2;
  grph_format = 1;
  break;
 case 138:
  sign = 1;
  floating = 1;

 case 132:
 case 133:
  grph_depth = 3;
  grph_format = 0;
  break;
 default:
  DC_ERR("unsupported grph pixel format");
  break;
 }

 REG_UPDATE_2(GRPH_CONTROL,
   GRPH_DEPTH, grph_depth,
   GRPH_FORMAT, grph_format);

 REG_UPDATE_4(PRESCALE_GRPH_CONTROL,
   GRPH_PRESCALE_SELECT, floating,
   GRPH_PRESCALE_R_SIGN, sign,
   GRPH_PRESCALE_G_SIGN, sign,
   GRPH_PRESCALE_B_SIGN, sign);
}
