
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce110_clk_src {int dummy; } ;
typedef enum signal_type { ____Placeholder_signal_type } signal_type ;
typedef enum dc_color_depth { ____Placeholder_dc_color_depth } dc_color_depth ;






 int DCCG_DEEP_COLOR_CNTL1 ;
 int REG_UPDATE (int ,int ,int) ;
 int RESYNC_CNTL ;
 int SIGNAL_TYPE_HDMI_TYPE_A ;

__attribute__((used)) static void dce110_program_pixel_clk_resync(
  struct dce110_clk_src *clk_src,
  enum signal_type signal_type,
  enum dc_color_depth colordepth)
{
 REG_UPDATE(RESYNC_CNTL,
   DCCG_DEEP_COLOR_CNTL1, 0);






 if (signal_type != SIGNAL_TYPE_HDMI_TYPE_A)
  return;

 switch (colordepth) {
 case 128:
  REG_UPDATE(RESYNC_CNTL,
    DCCG_DEEP_COLOR_CNTL1, 0);
  break;
 case 131:
  REG_UPDATE(RESYNC_CNTL,
    DCCG_DEEP_COLOR_CNTL1, 1);
  break;
 case 130:
  REG_UPDATE(RESYNC_CNTL,
    DCCG_DEEP_COLOR_CNTL1, 2);
  break;
 case 129:
  REG_UPDATE(RESYNC_CNTL,
    DCCG_DEEP_COLOR_CNTL1, 3);
  break;
 default:
  break;
 }
}
