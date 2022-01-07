
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct k3_dma_phy {scalar_t__ base; } ;


 scalar_t__ CX_LLI ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 k3_dma_get_curr_lli(struct k3_dma_phy *phy)
{
 return readl_relaxed(phy->base + CX_LLI);
}
