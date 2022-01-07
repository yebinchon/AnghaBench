
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tid_user_buf {struct page** pages; } ;
struct TYPE_3__ {int len; } ;
struct tid_rb_node {struct page** pages; TYPE_1__ mmu; int dma_addr; } ;
struct page {int dummy; } ;
struct hfi1_filedata {unsigned int tid_n_pinned; int mm; TYPE_2__* uctxt; } ;
struct hfi1_devdata {int pcidev; } ;
struct TYPE_4__ {struct hfi1_devdata* dd; } ;


 int PCI_DMA_FROMDEVICE ;
 int hfi1_release_user_pages (int ,struct page**,unsigned int,int) ;
 int pci_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void unpin_rcv_pages(struct hfi1_filedata *fd,
       struct tid_user_buf *tidbuf,
       struct tid_rb_node *node,
       unsigned int idx,
       unsigned int npages,
       bool mapped)
{
 struct page **pages;
 struct hfi1_devdata *dd = fd->uctxt->dd;

 if (mapped) {
  pci_unmap_single(dd->pcidev, node->dma_addr,
     node->mmu.len, PCI_DMA_FROMDEVICE);
  pages = &node->pages[idx];
 } else {
  pages = &tidbuf->pages[idx];
 }
 hfi1_release_user_pages(fd->mm, pages, npages, mapped);
 fd->tid_n_pinned -= npages;
}
