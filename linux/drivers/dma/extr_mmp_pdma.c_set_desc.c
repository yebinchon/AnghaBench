
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mmp_pdma_phy {int idx; scalar_t__ base; } ;
typedef int dma_addr_t ;


 scalar_t__ DDADR ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void set_desc(struct mmp_pdma_phy *phy, dma_addr_t addr)
{
 u32 reg = (phy->idx << 4) + DDADR;

 writel(addr, phy->base + reg);
}
