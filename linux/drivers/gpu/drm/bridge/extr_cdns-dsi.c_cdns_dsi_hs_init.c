
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cdns_dsi_output {TYPE_1__* dev; int phy_opts; } ;
struct cdns_dsi {scalar_t__ regs; int dphy; struct cdns_dsi_output output; } ;
struct TYPE_2__ {int lanes; } ;


 int DPHY_ALL_D_PDN ;
 int DPHY_CMN_PDN ;
 int DPHY_CMN_PSO ;
 int DPHY_C_PDN ;
 int DPHY_C_RSTB ;
 int DPHY_D_RSTB (int ) ;
 int DPHY_PLL_PDN ;
 int DPHY_PLL_PSO ;
 scalar_t__ MCTL_DPHY_CFG0 ;
 scalar_t__ MCTL_MAIN_STS ;
 scalar_t__ MCTL_MAIN_STS_CLR ;
 int PHY_MODE_MIPI_DPHY ;
 int PLL_LOCKED ;
 int WARN_ON_ONCE (int ) ;
 int phy_configure (int ,int *) ;
 int phy_init (int ) ;
 int phy_power_on (int ) ;
 int phy_set_mode (int ,int ) ;
 int readl_poll_timeout (scalar_t__,int,int,int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void cdns_dsi_hs_init(struct cdns_dsi *dsi)
{
 struct cdns_dsi_output *output = &dsi->output;
 u32 status;





 writel(DPHY_CMN_PSO | DPHY_PLL_PSO | DPHY_ALL_D_PDN | DPHY_C_PDN |
        DPHY_CMN_PDN | DPHY_PLL_PDN,
        dsi->regs + MCTL_DPHY_CFG0);

 phy_init(dsi->dphy);
 phy_set_mode(dsi->dphy, PHY_MODE_MIPI_DPHY);
 phy_configure(dsi->dphy, &output->phy_opts);
 phy_power_on(dsi->dphy);


 writel(PLL_LOCKED, dsi->regs + MCTL_MAIN_STS_CLR);
 writel(DPHY_CMN_PSO | DPHY_ALL_D_PDN | DPHY_C_PDN | DPHY_CMN_PDN,
        dsi->regs + MCTL_DPHY_CFG0);
 WARN_ON_ONCE(readl_poll_timeout(dsi->regs + MCTL_MAIN_STS, status,
     status & PLL_LOCKED, 100, 100));

 writel(DPHY_CMN_PSO | DPHY_ALL_D_PDN | DPHY_C_PDN | DPHY_CMN_PDN |
        DPHY_D_RSTB(output->dev->lanes) | DPHY_C_RSTB,
        dsi->regs + MCTL_DPHY_CFG0);
}
