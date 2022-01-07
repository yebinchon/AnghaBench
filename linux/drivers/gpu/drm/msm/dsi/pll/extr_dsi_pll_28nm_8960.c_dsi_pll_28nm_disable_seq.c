
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_pll {int dummy; } ;
struct dsi_pll_28nm {scalar_t__ mmio; int id; } ;


 int DBG (char*,int ) ;
 scalar_t__ REG_DSI_28nm_8960_PHY_PLL_CTRL_0 ;
 int pll_write (scalar_t__,int) ;
 struct dsi_pll_28nm* to_pll_28nm (struct msm_dsi_pll*) ;

__attribute__((used)) static void dsi_pll_28nm_disable_seq(struct msm_dsi_pll *pll)
{
 struct dsi_pll_28nm *pll_28nm = to_pll_28nm(pll);

 DBG("id=%d", pll_28nm->id);
 pll_write(pll_28nm->mmio + REG_DSI_28nm_8960_PHY_PLL_CTRL_0, 0x00);
}
