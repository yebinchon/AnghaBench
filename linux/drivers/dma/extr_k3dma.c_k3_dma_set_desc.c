
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct k3_dma_phy {scalar_t__ base; } ;
struct k3_desc_hw {int config; int daddr; int saddr; int count; int lli; } ;


 scalar_t__ CX_CFG ;
 scalar_t__ CX_CNT0 ;
 scalar_t__ CX_DST ;
 scalar_t__ CX_LLI ;
 scalar_t__ CX_SRC ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void k3_dma_set_desc(struct k3_dma_phy *phy, struct k3_desc_hw *hw)
{
 writel_relaxed(hw->lli, phy->base + CX_LLI);
 writel_relaxed(hw->count, phy->base + CX_CNT0);
 writel_relaxed(hw->saddr, phy->base + CX_SRC);
 writel_relaxed(hw->daddr, phy->base + CX_DST);
 writel_relaxed(hw->config, phy->base + CX_CFG);
}
