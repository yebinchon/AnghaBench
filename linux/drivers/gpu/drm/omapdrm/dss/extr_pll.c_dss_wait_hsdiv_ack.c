
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dss_pll {scalar_t__ base; } ;


 int ETIMEDOUT ;
 scalar_t__ PLL_STATUS ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static int dss_wait_hsdiv_ack(struct dss_pll *pll, u32 hsdiv_ack_mask)
{
 int t = 100;

 while (t-- > 0) {
  u32 v = readl_relaxed(pll->base + PLL_STATUS);
  v &= hsdiv_ack_mask;
  if (v == hsdiv_ack_mask)
   return 0;
 }

 return -ETIMEDOUT;
}
