
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct hfi1_devdata {int rcvhdrtail_dummy_dma; TYPE_1__* pcidev; int first_dyn_alloc_ctxt; } ;
struct hfi1_ctxtdata {int rcvhdrq_cnt; int * rcvhdrq; int rcvhdrq_dma; int ctxt; int rcvhdrqentsize; void* rcvhdrtail_kvaddr; int rcvhdrqtailaddr_dma; int flags; scalar_t__ is_vnic; } ;
typedef int gfp_t ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ DEFAULT_RCVHDRSIZE ;
 int DMA_RTAIL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GFP_USER ;
 int HDRQ_SIZE_SHIFT ;
 scalar_t__ HFI1_CAP_KGET_MASK (int ,int ) ;
 scalar_t__ HFI1_CAP_UGET_MASK (int ,int ) ;
 unsigned int PAGE_SIZE ;
 int RCV_HDR_CNT ;
 int RCV_HDR_CNT_CNT_MASK ;
 int RCV_HDR_CNT_CNT_SHIFT ;
 int RCV_HDR_ENT_SIZE ;
 int RCV_HDR_ENT_SIZE_ENT_SIZE_MASK ;
 int RCV_HDR_ENT_SIZE_ENT_SIZE_SHIFT ;
 int RCV_HDR_SIZE ;
 int RCV_HDR_SIZE_HDR_SIZE_MASK ;
 int RCV_HDR_SIZE_HDR_SIZE_SHIFT ;
 int RCV_HDR_TAIL_ADDR ;
 int __GFP_COMP ;
 int dd_dev_err (struct hfi1_devdata*,char*,unsigned int,...) ;
 void* dma_alloc_coherent (int *,unsigned int,int *,int) ;
 int dma_free_coherent (int *,unsigned int,int *,int ) ;
 int encode_rcv_header_entry_size (int ) ;
 unsigned int rcvhdrq_size (struct hfi1_ctxtdata*) ;
 int write_kctxt_csr (struct hfi1_devdata*,int ,int ,int) ;

int hfi1_create_rcvhdrq(struct hfi1_devdata *dd, struct hfi1_ctxtdata *rcd)
{
 unsigned amt;
 u64 reg;

 if (!rcd->rcvhdrq) {
  gfp_t gfp_flags;

  amt = rcvhdrq_size(rcd);

  if (rcd->ctxt < dd->first_dyn_alloc_ctxt || rcd->is_vnic)
   gfp_flags = GFP_KERNEL;
  else
   gfp_flags = GFP_USER;
  rcd->rcvhdrq = dma_alloc_coherent(&dd->pcidev->dev, amt,
        &rcd->rcvhdrq_dma,
        gfp_flags | __GFP_COMP);

  if (!rcd->rcvhdrq) {
   dd_dev_err(dd,
       "attempt to allocate %d bytes for ctxt %u rcvhdrq failed\n",
       amt, rcd->ctxt);
   goto bail;
  }

  if (HFI1_CAP_KGET_MASK(rcd->flags, DMA_RTAIL) ||
      HFI1_CAP_UGET_MASK(rcd->flags, DMA_RTAIL)) {
   rcd->rcvhdrtail_kvaddr = dma_alloc_coherent(&dd->pcidev->dev,
            PAGE_SIZE,
            &rcd->rcvhdrqtailaddr_dma,
            gfp_flags);
   if (!rcd->rcvhdrtail_kvaddr)
    goto bail_free;
  }
 }






 reg = ((u64)(rcd->rcvhdrq_cnt >> HDRQ_SIZE_SHIFT)
   & RCV_HDR_CNT_CNT_MASK)
  << RCV_HDR_CNT_CNT_SHIFT;
 write_kctxt_csr(dd, rcd->ctxt, RCV_HDR_CNT, reg);
 reg = (encode_rcv_header_entry_size(rcd->rcvhdrqentsize)
   & RCV_HDR_ENT_SIZE_ENT_SIZE_MASK)
  << RCV_HDR_ENT_SIZE_ENT_SIZE_SHIFT;
 write_kctxt_csr(dd, rcd->ctxt, RCV_HDR_ENT_SIZE, reg);
 reg = ((u64)DEFAULT_RCVHDRSIZE & RCV_HDR_SIZE_HDR_SIZE_MASK)
  << RCV_HDR_SIZE_HDR_SIZE_SHIFT;
 write_kctxt_csr(dd, rcd->ctxt, RCV_HDR_SIZE, reg);





 write_kctxt_csr(dd, rcd->ctxt, RCV_HDR_TAIL_ADDR,
   dd->rcvhdrtail_dummy_dma);

 return 0;

bail_free:
 dd_dev_err(dd,
     "attempt to allocate 1 page for ctxt %u rcvhdrqtailaddr failed\n",
     rcd->ctxt);
 dma_free_coherent(&dd->pcidev->dev, amt, rcd->rcvhdrq,
     rcd->rcvhdrq_dma);
 rcd->rcvhdrq = ((void*)0);
bail:
 return -ENOMEM;
}
