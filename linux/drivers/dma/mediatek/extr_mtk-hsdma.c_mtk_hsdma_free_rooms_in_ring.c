
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct mtk_hsdma_vdesc {int residue; } ;
struct TYPE_10__ {int lock; } ;
struct mtk_hsdma_vchan {int issue_synchronize; TYPE_4__ vc; int issue_completion; int desc_hw_processing; } ;
struct mtk_hsdma_pdesc {int desc2; int desc1; } ;
struct TYPE_9__ {size_t cur_rptr; struct mtk_hsdma_cb* cb; struct mtk_hsdma_pdesc* rxd; } ;
struct mtk_hsdma_pchan {int nr_free; TYPE_3__ ring; } ;
struct mtk_hsdma_device {int dma_requests; struct mtk_hsdma_vchan* vc; TYPE_1__* soc; struct mtk_hsdma_pchan* pc; } ;
struct mtk_hsdma_cb {TYPE_5__* vd; scalar_t__ flag; } ;
typedef int __le32 ;
struct TYPE_8__ {int chan; } ;
struct TYPE_11__ {int node; TYPE_2__ tx; } ;
struct TYPE_7__ {int ddone; } ;


 scalar_t__ IS_MTK_HSDMA_VDESC_FINISHED (scalar_t__) ;
 int MTK_DMA_SIZE ;
 scalar_t__ MTK_HSDMA_DESC_PLEN_GET (int ) ;
 int MTK_HSDMA_INT_ENABLE ;
 int MTK_HSDMA_INT_RXDONE ;
 int MTK_HSDMA_INT_STATUS ;
 size_t MTK_HSDMA_NEXT_DESP_IDX (size_t,int) ;
 int MTK_HSDMA_RX_CPU ;
 int READ_ONCE (int ) ;
 int WRITE_ONCE (int ,int ) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int complete (int *) ;
 int dev_err (int ,char*) ;
 int hsdma2dev (struct mtk_hsdma_device*) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int mtk_dma_read (struct mtk_hsdma_device*,int ) ;
 int mtk_dma_set (struct mtk_hsdma_device*,int ,int) ;
 int mtk_dma_write (struct mtk_hsdma_device*,int ,int) ;
 int mtk_hsdma_issue_vchan_pending (struct mtk_hsdma_device*,struct mtk_hsdma_vchan*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct mtk_hsdma_vchan* to_hsdma_vchan (int ) ;
 struct mtk_hsdma_vdesc* to_hsdma_vdesc (TYPE_5__*) ;
 scalar_t__ unlikely (int) ;
 int vchan_cookie_complete (TYPE_5__*) ;
 int wmb () ;

__attribute__((used)) static void mtk_hsdma_free_rooms_in_ring(struct mtk_hsdma_device *hsdma)
{
 struct mtk_hsdma_vchan *hvc;
 struct mtk_hsdma_pdesc *rxd;
 struct mtk_hsdma_vdesc *hvd;
 struct mtk_hsdma_pchan *pc;
 struct mtk_hsdma_cb *cb;
 int i = MTK_DMA_SIZE;
 __le32 desc2;
 u32 status;
 u16 next;


 status = mtk_dma_read(hsdma, MTK_HSDMA_INT_STATUS);
 if (unlikely(!(status & MTK_HSDMA_INT_RXDONE)))
  goto rx_done;

 pc = hsdma->pc;
 while (i--) {
  next = MTK_HSDMA_NEXT_DESP_IDX(pc->ring.cur_rptr,
            MTK_DMA_SIZE);
  rxd = &pc->ring.rxd[next];





  desc2 = READ_ONCE(rxd->desc2);
  if (!(desc2 & hsdma->soc->ddone))
   break;

  cb = &pc->ring.cb[next];
  if (unlikely(!cb->vd)) {
   dev_err(hsdma2dev(hsdma), "cb->vd cannot be null\n");
   break;
  }


  hvd = to_hsdma_vdesc(cb->vd);
  hvd->residue -= MTK_HSDMA_DESC_PLEN_GET(rxd->desc2);


  if (IS_MTK_HSDMA_VDESC_FINISHED(cb->flag)) {
   hvc = to_hsdma_vchan(cb->vd->tx.chan);

   spin_lock(&hvc->vc.lock);


   list_del(&cb->vd->node);


   vchan_cookie_complete(cb->vd);

   if (hvc->issue_synchronize &&
       list_empty(&hvc->desc_hw_processing)) {
    complete(&hvc->issue_completion);
    hvc->issue_synchronize = 0;
   }
   spin_unlock(&hvc->vc.lock);

   cb->flag = 0;
  }

  cb->vd = 0;





  WRITE_ONCE(rxd->desc1, 0);
  WRITE_ONCE(rxd->desc2, 0);
  pc->ring.cur_rptr = next;


  atomic_inc(&pc->nr_free);
 }


 wmb();


 mtk_dma_write(hsdma, MTK_HSDMA_RX_CPU, pc->ring.cur_rptr);






 if (atomic_read(&pc->nr_free) >= MTK_DMA_SIZE - 1)
  mtk_dma_write(hsdma, MTK_HSDMA_INT_STATUS, status);


 for (i = 0; i < hsdma->dma_requests; i++) {
  hvc = &hsdma->vc[i];
  spin_lock(&hvc->vc.lock);
  mtk_hsdma_issue_vchan_pending(hsdma, hvc);
  spin_unlock(&hvc->vc.lock);
 }

rx_done:

 mtk_dma_set(hsdma, MTK_HSDMA_INT_ENABLE, MTK_HSDMA_INT_RXDONE);
}
