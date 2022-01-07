
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sprd_dma_dev {struct sprd_dma_chn* channels; scalar_t__ glb_base; } ;
struct sprd_dma_desc {int vd; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {scalar_t__ phy_addr; } ;
struct sprd_dma_chn {TYPE_2__ vc; struct sprd_dma_desc* cur_desc; TYPE_1__ linklist; } ;
typedef int irqreturn_t ;
typedef enum sprd_dma_req_mode { ____Placeholder_sprd_dma_req_mode } sprd_dma_req_mode ;
typedef enum sprd_dma_int_type { ____Placeholder_sprd_dma_int_type } sprd_dma_int_type ;


 int IRQ_HANDLED ;
 scalar_t__ SPRD_DMA_GLB_INT_MSK_STS ;
 int __ffs (int) ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprd_dma_check_trans_done (struct sprd_dma_desc*,int,int) ;
 int sprd_dma_clear_int (struct sprd_dma_chn*) ;
 int sprd_dma_get_int_type (struct sprd_dma_chn*) ;
 int sprd_dma_get_req_type (struct sprd_dma_chn*) ;
 int sprd_dma_start (struct sprd_dma_chn*) ;
 int vchan_cookie_complete (int *) ;
 int vchan_cyclic_callback (int *) ;

__attribute__((used)) static irqreturn_t dma_irq_handle(int irq, void *dev_id)
{
 struct sprd_dma_dev *sdev = (struct sprd_dma_dev *)dev_id;
 u32 irq_status = readl(sdev->glb_base + SPRD_DMA_GLB_INT_MSK_STS);
 struct sprd_dma_chn *schan;
 struct sprd_dma_desc *sdesc;
 enum sprd_dma_req_mode req_type;
 enum sprd_dma_int_type int_type;
 bool trans_done = 0, cyclic = 0;
 u32 i;

 while (irq_status) {
  i = __ffs(irq_status);
  irq_status &= (irq_status - 1);
  schan = &sdev->channels[i];

  spin_lock(&schan->vc.lock);

  sdesc = schan->cur_desc;
  if (!sdesc) {
   spin_unlock(&schan->vc.lock);
   return IRQ_HANDLED;
  }

  int_type = sprd_dma_get_int_type(schan);
  req_type = sprd_dma_get_req_type(schan);
  sprd_dma_clear_int(schan);


  cyclic = schan->linklist.phy_addr ? 1 : 0;
  if (cyclic == 1) {
   vchan_cyclic_callback(&sdesc->vd);
  } else {

   trans_done = sprd_dma_check_trans_done(sdesc, int_type,
              req_type);
   if (trans_done == 1) {
    vchan_cookie_complete(&sdesc->vd);
    schan->cur_desc = ((void*)0);
    sprd_dma_start(schan);
   }
  }
  spin_unlock(&schan->vc.lock);
 }

 return IRQ_HANDLED;
}
