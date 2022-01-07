
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dmm {scalar_t__ base; int dev; scalar_t__ phys_base; scalar_t__ wa_dma_handle; scalar_t__ wa_dma_data; } ;
typedef scalar_t__ dma_addr_t ;


 int dev_err (int ,char*) ;
 int dmm_dma_copy (struct dmm*,scalar_t__,scalar_t__) ;
 int wmb () ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void dmm_write_wa(struct dmm *dmm, u32 val, u32 reg)
{
 dma_addr_t src, dst;
 int r;

 writel(val, dmm->wa_dma_data);






 wmb();

 src = dmm->wa_dma_handle;
 dst = dmm->phys_base + reg;

 r = dmm_dma_copy(dmm, src, dst);
 if (r) {
  dev_err(dmm->dev, "sDMA write transfer timeout\n");
  writel(val, dmm->base + reg);
 }
}
