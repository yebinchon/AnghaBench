
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct k3_dma_phy {int idx; } ;
struct k3_dma_dev {scalar_t__ base; } ;


 scalar_t__ INT_ERR1_RAW ;
 scalar_t__ INT_ERR2_RAW ;
 scalar_t__ INT_TC1_RAW ;
 scalar_t__ INT_TC2_RAW ;
 int k3_dma_pause_dma (struct k3_dma_phy*,int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void k3_dma_terminate_chan(struct k3_dma_phy *phy, struct k3_dma_dev *d)
{
 u32 val = 0;

 k3_dma_pause_dma(phy, 0);

 val = 0x1 << phy->idx;
 writel_relaxed(val, d->base + INT_TC1_RAW);
 writel_relaxed(val, d->base + INT_TC2_RAW);
 writel_relaxed(val, d->base + INT_ERR1_RAW);
 writel_relaxed(val, d->base + INT_ERR2_RAW);
}
