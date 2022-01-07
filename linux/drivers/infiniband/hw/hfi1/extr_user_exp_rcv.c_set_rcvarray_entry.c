
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct tid_user_buf {scalar_t__ vaddr; struct page** pages; } ;
struct TYPE_5__ {unsigned int len; scalar_t__ addr; } ;
struct tid_rb_node {unsigned int npages; int freed; int phys; TYPE_1__ mmu; int rcventry; int pages; struct tid_group* grp; int dma_addr; } ;
struct tid_group {int dummy; } ;
struct page {int dummy; } ;
struct hfi1_filedata {int subctxt; int handler; struct hfi1_ctxtdata* uctxt; } ;
struct hfi1_devdata {TYPE_2__* pcidev; } ;
struct hfi1_ctxtdata {int ctxt; struct hfi1_devdata* dd; } ;
typedef int dma_addr_t ;
struct TYPE_6__ {int dev; } ;


 int EFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int PAGE_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 int PT_EXPECTED ;
 int TID ;
 int __va (int ) ;
 int dd_dev_err (struct hfi1_devdata*,char*,int ) ;
 scalar_t__ dma_mapping_error (int *,int ) ;
 int hfi1_cdbg (int ,char*,int ,scalar_t__,int ,int) ;
 int hfi1_mmu_rb_insert (int ,TYPE_1__*) ;
 int hfi1_put_tid (struct hfi1_devdata*,int ,int ,int ,scalar_t__) ;
 scalar_t__ ilog2 (unsigned int) ;
 int kfree (struct tid_rb_node*) ;
 struct tid_rb_node* kzalloc (int,int ) ;
 int memcpy (int ,struct page**,int) ;
 int page_to_phys (struct page*) ;
 int pci_map_single (TYPE_2__*,int ,unsigned int,int ) ;
 int pci_unmap_single (TYPE_2__*,int ,unsigned int,int ) ;
 int tid_rb_insert (struct hfi1_filedata*,TYPE_1__*) ;
 int trace_hfi1_exp_tid_reg (int ,int ,int ,unsigned int,scalar_t__,int ,int ) ;

__attribute__((used)) static int set_rcvarray_entry(struct hfi1_filedata *fd,
         struct tid_user_buf *tbuf,
         u32 rcventry, struct tid_group *grp,
         u16 pageidx, unsigned int npages)
{
 int ret;
 struct hfi1_ctxtdata *uctxt = fd->uctxt;
 struct tid_rb_node *node;
 struct hfi1_devdata *dd = uctxt->dd;
 dma_addr_t phys;
 struct page **pages = tbuf->pages + pageidx;





 node = kzalloc(sizeof(*node) + (sizeof(struct page *) * npages),
         GFP_KERNEL);
 if (!node)
  return -ENOMEM;

 phys = pci_map_single(dd->pcidev,
         __va(page_to_phys(pages[0])),
         npages * PAGE_SIZE, PCI_DMA_FROMDEVICE);
 if (dma_mapping_error(&dd->pcidev->dev, phys)) {
  dd_dev_err(dd, "Failed to DMA map Exp Rcv pages 0x%llx\n",
      phys);
  kfree(node);
  return -EFAULT;
 }

 node->mmu.addr = tbuf->vaddr + (pageidx * PAGE_SIZE);
 node->mmu.len = npages * PAGE_SIZE;
 node->phys = page_to_phys(pages[0]);
 node->npages = npages;
 node->rcventry = rcventry;
 node->dma_addr = phys;
 node->grp = grp;
 node->freed = 0;
 memcpy(node->pages, pages, sizeof(struct page *) * npages);

 if (!fd->handler)
  ret = tid_rb_insert(fd, &node->mmu);
 else
  ret = hfi1_mmu_rb_insert(fd->handler, &node->mmu);

 if (ret) {
  hfi1_cdbg(TID, "Failed to insert RB node %u 0x%lx, 0x%lx %d",
     node->rcventry, node->mmu.addr, node->phys, ret);
  pci_unmap_single(dd->pcidev, phys, npages * PAGE_SIZE,
     PCI_DMA_FROMDEVICE);
  kfree(node);
  return -EFAULT;
 }
 hfi1_put_tid(dd, rcventry, PT_EXPECTED, phys, ilog2(npages) + 1);
 trace_hfi1_exp_tid_reg(uctxt->ctxt, fd->subctxt, rcventry, npages,
          node->mmu.addr, node->phys, phys);
 return 0;
}
