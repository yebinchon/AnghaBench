
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct k3_dma_phy {scalar_t__ base; } ;


 scalar_t__ CX_CFG ;
 int CX_CFG_EN ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void k3_dma_pause_dma(struct k3_dma_phy *phy, bool on)
{
 u32 val = 0;

 if (on) {
  val = readl_relaxed(phy->base + CX_CFG);
  val |= CX_CFG_EN;
  writel_relaxed(val, phy->base + CX_CFG);
 } else {
  val = readl_relaxed(phy->base + CX_CFG);
  val &= ~CX_CFG_EN;
  writel_relaxed(val, phy->base + CX_CFG);
 }
}
