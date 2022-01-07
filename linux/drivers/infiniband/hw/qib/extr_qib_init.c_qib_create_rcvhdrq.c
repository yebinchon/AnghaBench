
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qib_devdata {int rcvhdrcnt; int rcvhdrentsize; int flags; TYPE_1__* pcidev; int first_user_ctxt; } ;
struct qib_ctxtdata {int node_id; unsigned int rcvhdrq_size; int * rcvhdrq; int rcvhdrq_phys; int * user_event_mask; int ctxt; int * rcvhdrtail_kvaddr; int rcvhdrqtailaddr_phys; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 unsigned int ALIGN (int,unsigned int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GFP_USER ;
 unsigned int PAGE_SIZE ;
 int QIB_NODMA_RTAIL ;
 int __GFP_COMP ;
 int dev_to_node (int *) ;
 void* dma_alloc_coherent (int *,unsigned int,int *,int) ;
 int dma_free_coherent (int *,unsigned int,int *,int ) ;
 int memset (int *,int ,unsigned int) ;
 int qib_dev_err (struct qib_devdata*,char*,unsigned int,...) ;
 int set_dev_node (int *,int) ;
 int vfree (int *) ;
 int * vmalloc_user (unsigned int) ;

int qib_create_rcvhdrq(struct qib_devdata *dd, struct qib_ctxtdata *rcd)
{
 unsigned amt;
 int old_node_id;

 if (!rcd->rcvhdrq) {
  dma_addr_t phys_hdrqtail;
  gfp_t gfp_flags;

  amt = ALIGN(dd->rcvhdrcnt * dd->rcvhdrentsize *
       sizeof(u32), PAGE_SIZE);
  gfp_flags = (rcd->ctxt >= dd->first_user_ctxt) ?
   GFP_USER : GFP_KERNEL;

  old_node_id = dev_to_node(&dd->pcidev->dev);
  set_dev_node(&dd->pcidev->dev, rcd->node_id);
  rcd->rcvhdrq = dma_alloc_coherent(
   &dd->pcidev->dev, amt, &rcd->rcvhdrq_phys,
   gfp_flags | __GFP_COMP);
  set_dev_node(&dd->pcidev->dev, old_node_id);

  if (!rcd->rcvhdrq) {
   qib_dev_err(dd,
    "attempt to allocate %d bytes for ctxt %u rcvhdrq failed\n",
    amt, rcd->ctxt);
   goto bail;
  }

  if (rcd->ctxt >= dd->first_user_ctxt) {
   rcd->user_event_mask = vmalloc_user(PAGE_SIZE);
   if (!rcd->user_event_mask)
    goto bail_free_hdrq;
  }

  if (!(dd->flags & QIB_NODMA_RTAIL)) {
   set_dev_node(&dd->pcidev->dev, rcd->node_id);
   rcd->rcvhdrtail_kvaddr = dma_alloc_coherent(
    &dd->pcidev->dev, PAGE_SIZE, &phys_hdrqtail,
    gfp_flags);
   set_dev_node(&dd->pcidev->dev, old_node_id);
   if (!rcd->rcvhdrtail_kvaddr)
    goto bail_free;
   rcd->rcvhdrqtailaddr_phys = phys_hdrqtail;
  }

  rcd->rcvhdrq_size = amt;
 }


 memset(rcd->rcvhdrq, 0, rcd->rcvhdrq_size);
 if (rcd->rcvhdrtail_kvaddr)
  memset(rcd->rcvhdrtail_kvaddr, 0, PAGE_SIZE);
 return 0;

bail_free:
 qib_dev_err(dd,
  "attempt to allocate 1 page for ctxt %u rcvhdrqtailaddr failed\n",
  rcd->ctxt);
 vfree(rcd->user_event_mask);
 rcd->user_event_mask = ((void*)0);
bail_free_hdrq:
 dma_free_coherent(&dd->pcidev->dev, amt, rcd->rcvhdrq,
     rcd->rcvhdrq_phys);
 rcd->rcvhdrq = ((void*)0);
bail:
 return -ENOMEM;
}
