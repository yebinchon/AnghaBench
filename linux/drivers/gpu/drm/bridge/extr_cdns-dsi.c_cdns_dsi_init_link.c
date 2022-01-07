
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cdns_dsi_output {TYPE_1__* dev; } ;
struct cdns_dsi {int link_initialized; scalar_t__ regs; int dsi_sys_clk; struct cdns_dsi_output output; } ;
struct TYPE_2__ {int lanes; int mode_flags; } ;


 int CLK_CONTINUOUS ;
 int CLK_LANE_EN ;
 int CLK_LANE_ULPOUT_TIME (unsigned long) ;
 int DATA_LANE_EN (int) ;
 int DATA_LANE_START (int) ;
 int DATA_LANE_ULPOUT_TIME (unsigned long) ;
 unsigned long DIV_ROUND_UP (int ,unsigned long) ;
 int LINK_EN ;
 scalar_t__ MCTL_MAIN_DATA_CTL ;
 scalar_t__ MCTL_MAIN_EN ;
 scalar_t__ MCTL_MAIN_PHY_CTL ;
 scalar_t__ MCTL_ULPOUT_TIME ;
 int MIPI_DSI_CLOCK_NON_CONTINUOUS ;
 int NSEC_PER_MSEC ;
 unsigned long NSEC_PER_SEC ;
 int PLL_START ;
 unsigned long clk_get_rate (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void cdns_dsi_init_link(struct cdns_dsi *dsi)
{
 struct cdns_dsi_output *output = &dsi->output;
 unsigned long sysclk_period, ulpout;
 u32 val;
 int i;

 if (dsi->link_initialized)
  return;

 val = 0;
 for (i = 1; i < output->dev->lanes; i++)
  val |= DATA_LANE_EN(i);

 if (!(output->dev->mode_flags & MIPI_DSI_CLOCK_NON_CONTINUOUS))
  val |= CLK_CONTINUOUS;

 writel(val, dsi->regs + MCTL_MAIN_PHY_CTL);


 sysclk_period = NSEC_PER_SEC / clk_get_rate(dsi->dsi_sys_clk);
 ulpout = DIV_ROUND_UP(NSEC_PER_MSEC, sysclk_period);
 writel(CLK_LANE_ULPOUT_TIME(ulpout) | DATA_LANE_ULPOUT_TIME(ulpout),
        dsi->regs + MCTL_ULPOUT_TIME);

 writel(LINK_EN, dsi->regs + MCTL_MAIN_DATA_CTL);

 val = CLK_LANE_EN | PLL_START;
 for (i = 0; i < output->dev->lanes; i++)
  val |= DATA_LANE_START(i);

 writel(val, dsi->regs + MCTL_MAIN_EN);

 dsi->link_initialized = 1;
}
