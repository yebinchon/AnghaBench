
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hifn_dma {size_t resi; int resu; TYPE_1__* resr; } ;
struct hifn_device {int flags; scalar_t__ desc_virt; } ;
struct TYPE_2__ {void* l; } ;


 int HIFN_1_DMA_CSR ;
 int HIFN_DMACSR_R_CTRL_ENA ;
 int HIFN_D_JUMP ;
 int HIFN_D_LAST ;
 int HIFN_D_MASKDONEIRQ ;
 size_t HIFN_D_RES_RSIZE ;
 int HIFN_D_VALID ;
 int HIFN_FLAG_RES_BUSY ;
 int HIFN_USED_RESULT ;
 void* __cpu_to_le32 (int) ;
 int hifn_write_1 (struct hifn_device*,int ,int ) ;

__attribute__((used)) static void hifn_setup_res_desc(struct hifn_device *dev)
{
 struct hifn_dma *dma = (struct hifn_dma *)dev->desc_virt;

 dma->resr[dma->resi].l = __cpu_to_le32(HIFN_USED_RESULT |
   HIFN_D_VALID | HIFN_D_LAST);





 if (++dma->resi == HIFN_D_RES_RSIZE) {
  dma->resr[HIFN_D_RES_RSIZE].l = __cpu_to_le32(HIFN_D_VALID |
    HIFN_D_JUMP | HIFN_D_MASKDONEIRQ | HIFN_D_LAST);
  dma->resi = 0;
 }

 dma->resu++;

 if (!(dev->flags & HIFN_FLAG_RES_BUSY)) {
  hifn_write_1(dev, HIFN_1_DMA_CSR, HIFN_DMACSR_R_CTRL_ENA);
  dev->flags |= HIFN_FLAG_RES_BUSY;
 }
}
