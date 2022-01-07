
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dmm {scalar_t__ wa_dma_data; scalar_t__ base; int dev; scalar_t__ wa_dma_handle; scalar_t__ phys_base; } ;
typedef scalar_t__ dma_addr_t ;


 int dev_err (int ,char*) ;
 int dmm_dma_copy (struct dmm*,scalar_t__,scalar_t__) ;
 scalar_t__ readl (scalar_t__) ;
 int rmb () ;

__attribute__((used)) static u32 dmm_read_wa(struct dmm *dmm, u32 reg)
{
 dma_addr_t src, dst;
 int r;

 src = dmm->phys_base + reg;
 dst = dmm->wa_dma_handle;

 r = dmm_dma_copy(dmm, src, dst);
 if (r) {
  dev_err(dmm->dev, "sDMA read transfer timeout\n");
  return readl(dmm->base + reg);
 }






 rmb();
 return readl(dmm->wa_dma_data);
}
