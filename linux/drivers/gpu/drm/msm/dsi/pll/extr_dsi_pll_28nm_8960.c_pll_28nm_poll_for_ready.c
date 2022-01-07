
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsi_pll_28nm {scalar_t__ mmio; } ;


 int DBG (char*,char*) ;
 int DSI_28nm_8960_PHY_PLL_RDY_PLL_RDY ;
 scalar_t__ REG_DSI_28nm_8960_PHY_PLL_RDY ;
 int pll_read (scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static bool pll_28nm_poll_for_ready(struct dsi_pll_28nm *pll_28nm,
        int nb_tries, int timeout_us)
{
 bool pll_locked = 0;
 u32 val;

 while (nb_tries--) {
  val = pll_read(pll_28nm->mmio + REG_DSI_28nm_8960_PHY_PLL_RDY);
  pll_locked = !!(val & DSI_28nm_8960_PHY_PLL_RDY_PLL_RDY);

  if (pll_locked)
   break;

  udelay(timeout_us);
 }
 DBG("DSI PLL is %slocked", pll_locked ? "" : "*not* ");

 return pll_locked;
}
