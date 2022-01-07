
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int capabilities; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct TYPE_6__ {int clock; } ;
struct tc_data {int regmap; TYPE_2__ link; TYPE_3__ mode; int refclk; int dev; } ;


 int DP0CTL ;
 int DP0_AUDSRC_NO_INPUT ;
 int DP0_VIDSRC_COLOR_BAR ;
 int DP0_VIDSRC_DPI_RX ;
 int DP_EN ;
 int DP_LINK_CAP_ENHANCED_FRAMING ;
 int EF_EN ;
 int SYSCTRL ;
 int VID_EN ;
 int VID_MN_GEN ;
 int clk_get_rate (int ) ;
 int dev_dbg (int ,char*) ;
 int regmap_write (int ,int ,int) ;
 int tc_pxl_pll_en (struct tc_data*,int ,int) ;
 int tc_set_video_mode (struct tc_data*,TYPE_3__*) ;
 int tc_stream_clock_calc (struct tc_data*) ;
 scalar_t__ tc_test_pattern ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tc_stream_enable(struct tc_data *tc)
{
 int ret;
 u32 value;

 dev_dbg(tc->dev, "enable video stream\n");


 if (tc_test_pattern) {
  ret = tc_pxl_pll_en(tc, clk_get_rate(tc->refclk),
        1000 * tc->mode.clock);
  if (ret)
   return ret;
 }

 ret = tc_set_video_mode(tc, &tc->mode);
 if (ret)
  return ret;


 ret = tc_stream_clock_calc(tc);
 if (ret)
  return ret;

 value = VID_MN_GEN | DP_EN;
 if (tc->link.base.capabilities & DP_LINK_CAP_ENHANCED_FRAMING)
  value |= EF_EN;
 ret = regmap_write(tc->regmap, DP0CTL, value);
 if (ret)
  return ret;







 usleep_range(500, 1000);
 value |= VID_EN;
 ret = regmap_write(tc->regmap, DP0CTL, value);
 if (ret)
  return ret;

 value = DP0_AUDSRC_NO_INPUT;
 if (tc_test_pattern)
  value |= DP0_VIDSRC_COLOR_BAR;
 else
  value |= DP0_VIDSRC_DPI_RX;
 ret = regmap_write(tc->regmap, SYSCTRL, value);
 if (ret)
  return ret;

 return 0;
}
