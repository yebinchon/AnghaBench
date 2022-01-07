
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zx_dma_dev {scalar_t__ base; } ;


 scalar_t__ REG_ZX_STATUS ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 zx_dma_get_chan_stat(struct zx_dma_dev *d)
{
 return readl_relaxed(d->base + REG_ZX_STATUS);
}
