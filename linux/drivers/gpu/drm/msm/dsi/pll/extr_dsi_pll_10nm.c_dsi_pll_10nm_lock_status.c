
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsi_pll_10nm {int id; scalar_t__ mmio; } ;


 int BIT (int ) ;
 scalar_t__ REG_DSI_10nm_PHY_PLL_COMMON_STATUS_ONE ;
 int pr_err (char*,int ,int) ;
 int readl_poll_timeout_atomic (scalar_t__,int,int,int const,int const) ;

__attribute__((used)) static int dsi_pll_10nm_lock_status(struct dsi_pll_10nm *pll)
{
 int rc;
 u32 status = 0;
 u32 const delay_us = 100;
 u32 const timeout_us = 5000;

 rc = readl_poll_timeout_atomic(pll->mmio +
           REG_DSI_10nm_PHY_PLL_COMMON_STATUS_ONE,
           status,
           ((status & BIT(0)) > 0),
           delay_us,
           timeout_us);
 if (rc)
  pr_err("DSI PLL(%d) lock failed, status=0x%08x\n",
         pll->id, status);

 return rc;
}
