
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsi_data {TYPE_1__* data; } ;
typedef enum dsi_pll_power_state { ____Placeholder_dsi_pll_power_state } dsi_pll_power_state ;
struct TYPE_2__ {int quirks; } ;


 int DSI_CLK_CTRL ;
 int DSI_PLL_POWER_ON_ALL ;
 int DSI_PLL_POWER_ON_DIV ;
 int DSI_QUIRK_PLL_PWR_BUG ;
 int DSSERR (char*,int) ;
 int ENODEV ;
 int FLD_GET (int ,int,int) ;
 int REG_FLD_MOD (struct dsi_data*,int ,int,int,int) ;
 int dsi_read_reg (struct dsi_data*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int dsi_pll_power(struct dsi_data *dsi, enum dsi_pll_power_state state)
{
 int t = 0;


 if ((dsi->data->quirks & DSI_QUIRK_PLL_PWR_BUG) &&
     state == DSI_PLL_POWER_ON_DIV)
  state = DSI_PLL_POWER_ON_ALL;


 REG_FLD_MOD(dsi, DSI_CLK_CTRL, state, 31, 30);


 while (FLD_GET(dsi_read_reg(dsi, DSI_CLK_CTRL), 29, 28) != state) {
  if (++t > 1000) {
   DSSERR("Failed to set DSI PLL power mode to %d\n",
     state);
   return -ENODEV;
  }
  udelay(1);
 }

 return 0;
}
