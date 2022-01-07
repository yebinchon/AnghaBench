
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct dce110_clk_src {TYPE_1__* cs_mask; } ;
typedef enum signal_type { ____Placeholder_signal_type } signal_type ;
typedef enum dc_color_depth { ____Placeholder_dc_color_depth } dc_color_depth ;
struct TYPE_2__ {scalar_t__ PHYPLLA_PIXCLK_DOUBLE_RATE_ENABLE; } ;






 int PHYPLLA_DCCG_DEEP_COLOR_CNTL ;
 int PHYPLLA_PIXCLK_DOUBLE_RATE_ENABLE ;
 int PIXCLK_RESYNC_CNTL ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 int SIGNAL_TYPE_HDMI_TYPE_A ;

__attribute__((used)) static void dce112_program_pixel_clk_resync(
  struct dce110_clk_src *clk_src,
  enum signal_type signal_type,
  enum dc_color_depth colordepth,
  bool enable_ycbcr420)
{
 uint32_t deep_color_cntl = 0;
 uint32_t double_rate_enable = 0;







 if (signal_type == SIGNAL_TYPE_HDMI_TYPE_A) {
  double_rate_enable = enable_ycbcr420 ? 1 : 0;

  switch (colordepth) {
  case 128:
   deep_color_cntl = 0;
   break;
  case 131:
   deep_color_cntl = 1;
   break;
  case 130:
   deep_color_cntl = 2;
   break;
  case 129:
   deep_color_cntl = 3;
   break;
  default:
   break;
  }
 }

 if (clk_src->cs_mask->PHYPLLA_PIXCLK_DOUBLE_RATE_ENABLE)
  REG_UPDATE_2(PIXCLK_RESYNC_CNTL,
    PHYPLLA_DCCG_DEEP_COLOR_CNTL, deep_color_cntl,
    PHYPLLA_PIXCLK_DOUBLE_RATE_ENABLE, double_rate_enable);
 else
  REG_UPDATE(PIXCLK_RESYNC_CNTL,
    PHYPLLA_DCCG_DEEP_COLOR_CNTL, deep_color_cntl);

}
