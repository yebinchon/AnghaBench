
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mcde_dsi {int dev; scalar_t__ regs; TYPE_1__* mdsi; int hs_clk; } ;
struct TYPE_2__ {int mode_flags; int lanes; } ;


 scalar_t__ DSI_CMD_MODE_CTL ;
 int DSI_CMD_MODE_CTL_IF1_ID_MASK ;
 int DSI_CMD_MODE_CTL_TE_TIMEOUT_SHIFT ;
 scalar_t__ DSI_DPHY_LANES_TRIM ;
 int DSI_DPHY_LANES_TRIM_DPHY_SPECS_90_81B_0_90 ;
 scalar_t__ DSI_MCTL_DPHY_STATIC ;
 int DSI_MCTL_DPHY_STATIC_UI_X4_MASK ;
 int DSI_MCTL_DPHY_STATIC_UI_X4_SHIFT ;
 scalar_t__ DSI_MCTL_DPHY_TIMEOUT ;
 int DSI_MCTL_DPHY_TIMEOUT_CLK_DIV_SHIFT ;
 int DSI_MCTL_DPHY_TIMEOUT_HSTX_TO_VAL_SHIFT ;
 int DSI_MCTL_DPHY_TIMEOUT_LPRX_TO_VAL_SHIFT ;
 scalar_t__ DSI_MCTL_INTEGRATION_MODE ;
 scalar_t__ DSI_MCTL_MAIN_DATA_CTL ;
 int DSI_MCTL_MAIN_DATA_CTL_BTA_EN ;
 int DSI_MCTL_MAIN_DATA_CTL_HOST_EOT_GEN ;
 int DSI_MCTL_MAIN_DATA_CTL_LINK_EN ;
 int DSI_MCTL_MAIN_DATA_CTL_READ_EN ;
 int DSI_MCTL_MAIN_DATA_CTL_REG_TE_EN ;
 scalar_t__ DSI_MCTL_MAIN_EN ;
 int DSI_MCTL_MAIN_EN_CKLANE_EN ;
 int DSI_MCTL_MAIN_EN_DAT1_EN ;
 int DSI_MCTL_MAIN_EN_DAT2_EN ;
 int DSI_MCTL_MAIN_EN_IF1_EN ;
 int DSI_MCTL_MAIN_EN_PLL_START ;
 scalar_t__ DSI_MCTL_MAIN_PHY_CTL ;
 int DSI_MCTL_MAIN_PHY_CTL_CLK_CONTINUOUS ;
 int DSI_MCTL_MAIN_PHY_CTL_CLK_ULPM_EN ;
 int DSI_MCTL_MAIN_PHY_CTL_DAT1_ULPM_EN ;
 int DSI_MCTL_MAIN_PHY_CTL_DAT2_ULPM_EN ;
 int DSI_MCTL_MAIN_PHY_CTL_LANE2_EN ;
 int DSI_MCTL_MAIN_PHY_CTL_WAIT_BURST_TIME_SHIFT ;
 scalar_t__ DSI_MCTL_MAIN_STS ;
 int DSI_MCTL_MAIN_STS_CLKLANE_READY ;
 int DSI_MCTL_MAIN_STS_DAT1_READY ;
 int DSI_MCTL_MAIN_STS_DAT2_READY ;
 int DSI_MCTL_MAIN_STS_PLL_LOCK ;
 scalar_t__ DSI_MCTL_ULPOUT_TIME ;
 int DSI_MCTL_ULPOUT_TIME_CKLANE_ULPOUT_TIME_SHIFT ;
 int DSI_MCTL_ULPOUT_TIME_DATA_ULPOUT_TIME_SHIFT ;
 int MIPI_DSI_CLOCK_NON_CONTINUOUS ;
 int MIPI_DSI_MODE_EOT_PACKET ;
 unsigned long clk_get_rate (int ) ;
 int dev_dbg (int ,char*,int) ;
 int dev_info (int ,char*) ;
 int dev_warn (int ,char*) ;
 int readl (scalar_t__) ;
 int usleep_range (int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mcde_dsi_start(struct mcde_dsi *d)
{
 unsigned long hs_freq;
 u32 val;
 int i;


 writel(0, d->regs + DSI_MCTL_INTEGRATION_MODE);


 val = DSI_MCTL_MAIN_DATA_CTL_LINK_EN |
  DSI_MCTL_MAIN_DATA_CTL_BTA_EN |
  DSI_MCTL_MAIN_DATA_CTL_READ_EN |
  DSI_MCTL_MAIN_DATA_CTL_REG_TE_EN;
 if (d->mdsi->mode_flags & MIPI_DSI_MODE_EOT_PACKET)
  val |= DSI_MCTL_MAIN_DATA_CTL_HOST_EOT_GEN;
 writel(val, d->regs + DSI_MCTL_MAIN_DATA_CTL);


 val = 0x3ff << DSI_CMD_MODE_CTL_TE_TIMEOUT_SHIFT;
 writel(val, d->regs + DSI_CMD_MODE_CTL);






 hs_freq = clk_get_rate(d->hs_clk);
 hs_freq /= 1000000;
 val = 4000 / hs_freq;
 dev_dbg(d->dev, "UI value: %d\n", val);
 val <<= DSI_MCTL_DPHY_STATIC_UI_X4_SHIFT;
 val &= DSI_MCTL_DPHY_STATIC_UI_X4_MASK;
 writel(val, d->regs + DSI_MCTL_DPHY_STATIC);







 val = 0x0f << DSI_MCTL_MAIN_PHY_CTL_WAIT_BURST_TIME_SHIFT;
 if (d->mdsi->lanes == 2)
  val |= DSI_MCTL_MAIN_PHY_CTL_LANE2_EN;
 if (!(d->mdsi->mode_flags & MIPI_DSI_CLOCK_NON_CONTINUOUS))
  val |= DSI_MCTL_MAIN_PHY_CTL_CLK_CONTINUOUS;
 val |= DSI_MCTL_MAIN_PHY_CTL_CLK_ULPM_EN |
  DSI_MCTL_MAIN_PHY_CTL_DAT1_ULPM_EN |
  DSI_MCTL_MAIN_PHY_CTL_DAT2_ULPM_EN;
 writel(val, d->regs + DSI_MCTL_MAIN_PHY_CTL);

 val = (1 << DSI_MCTL_ULPOUT_TIME_CKLANE_ULPOUT_TIME_SHIFT) |
  (1 << DSI_MCTL_ULPOUT_TIME_DATA_ULPOUT_TIME_SHIFT);
 writel(val, d->regs + DSI_MCTL_ULPOUT_TIME);

 writel(DSI_DPHY_LANES_TRIM_DPHY_SPECS_90_81B_0_90,
        d->regs + DSI_DPHY_LANES_TRIM);


 val = (0x0f << DSI_MCTL_DPHY_TIMEOUT_CLK_DIV_SHIFT) |
  (0x3fff << DSI_MCTL_DPHY_TIMEOUT_HSTX_TO_VAL_SHIFT) |
  (0x3fff << DSI_MCTL_DPHY_TIMEOUT_LPRX_TO_VAL_SHIFT);
 writel(val, d->regs + DSI_MCTL_DPHY_TIMEOUT);

 val = DSI_MCTL_MAIN_EN_PLL_START |
  DSI_MCTL_MAIN_EN_CKLANE_EN |
  DSI_MCTL_MAIN_EN_DAT1_EN |
  DSI_MCTL_MAIN_EN_IF1_EN;
 if (d->mdsi->lanes == 2)
  val |= DSI_MCTL_MAIN_EN_DAT2_EN;
 writel(val, d->regs + DSI_MCTL_MAIN_EN);


 i = 0;
 val = DSI_MCTL_MAIN_STS_PLL_LOCK |
  DSI_MCTL_MAIN_STS_CLKLANE_READY |
  DSI_MCTL_MAIN_STS_DAT1_READY;
 if (d->mdsi->lanes == 2)
  val |= DSI_MCTL_MAIN_STS_DAT2_READY;
 while ((readl(d->regs + DSI_MCTL_MAIN_STS) & val) != val) {

  usleep_range(1000, 1500);
  if (i++ == 100) {
   dev_warn(d->dev, "DSI lanes did not start up\n");
   return;
  }
 }




 val = readl(d->regs + DSI_CMD_MODE_CTL);





 val &= ~DSI_CMD_MODE_CTL_IF1_ID_MASK;
 writel(val, d->regs + DSI_CMD_MODE_CTL);


 usleep_range(100, 200);
 dev_info(d->dev, "DSI link enabled\n");
}
