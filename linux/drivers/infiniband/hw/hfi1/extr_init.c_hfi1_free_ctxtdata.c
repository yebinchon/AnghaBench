
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct hfi1_devdata {TYPE_1__* pcidev; } ;
struct TYPE_5__ {size_t alloced; TYPE_3__* buffers; TYPE_3__* rcvtids; } ;
struct hfi1_ctxtdata {void* rcvhdrq; TYPE_3__* opstats; int * subctxt_rcvhdr_base; int * subctxt_rcvegrbuf; int * subctxt_uregbase; int * sc; TYPE_2__ egrbufs; int * rcvhdrtail_kvaddr; scalar_t__ rcvhdrqtailaddr_dma; scalar_t__ rcvhdrq_dma; } ;
struct TYPE_6__ {void* addr; scalar_t__ dma; int len; } ;
struct TYPE_4__ {int dev; } ;


 int PAGE_SIZE ;
 int dma_free_coherent (int *,int ,void*,scalar_t__) ;
 int kfree (TYPE_3__*) ;
 int rcvhdrq_size (struct hfi1_ctxtdata*) ;
 int sc_free (int *) ;
 int vfree (int *) ;

void hfi1_free_ctxtdata(struct hfi1_devdata *dd, struct hfi1_ctxtdata *rcd)
{
 u32 e;

 if (!rcd)
  return;

 if (rcd->rcvhdrq) {
  dma_free_coherent(&dd->pcidev->dev, rcvhdrq_size(rcd),
      rcd->rcvhdrq, rcd->rcvhdrq_dma);
  rcd->rcvhdrq = ((void*)0);
  if (rcd->rcvhdrtail_kvaddr) {
   dma_free_coherent(&dd->pcidev->dev, PAGE_SIZE,
       (void *)rcd->rcvhdrtail_kvaddr,
       rcd->rcvhdrqtailaddr_dma);
   rcd->rcvhdrtail_kvaddr = ((void*)0);
  }
 }


 kfree(rcd->egrbufs.rcvtids);
 rcd->egrbufs.rcvtids = ((void*)0);

 for (e = 0; e < rcd->egrbufs.alloced; e++) {
  if (rcd->egrbufs.buffers[e].dma)
   dma_free_coherent(&dd->pcidev->dev,
       rcd->egrbufs.buffers[e].len,
       rcd->egrbufs.buffers[e].addr,
       rcd->egrbufs.buffers[e].dma);
 }
 kfree(rcd->egrbufs.buffers);
 rcd->egrbufs.alloced = 0;
 rcd->egrbufs.buffers = ((void*)0);

 sc_free(rcd->sc);
 rcd->sc = ((void*)0);

 vfree(rcd->subctxt_uregbase);
 vfree(rcd->subctxt_rcvegrbuf);
 vfree(rcd->subctxt_rcvhdr_base);
 kfree(rcd->opstats);

 rcd->subctxt_uregbase = ((void*)0);
 rcd->subctxt_rcvegrbuf = ((void*)0);
 rcd->subctxt_rcvhdr_base = ((void*)0);
 rcd->opstats = ((void*)0);
}
