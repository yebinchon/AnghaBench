
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct page {int * mapping; } ;
struct TYPE_5__ {int sgl; } ;
struct msc {unsigned long nr_pages; scalar_t__ base; TYPE_2__ single_sgt; } ;
struct TYPE_6__ {TYPE_1__* parent; } ;
struct TYPE_4__ {int parent; } ;


 int DMA_FROM_DEVICE ;
 int PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int __free_page (struct page*) ;
 int dma_unmap_sg (int ,int ,int,int ) ;
 TYPE_3__* msc_dev (struct msc*) ;
 int sg_free_table (TYPE_2__*) ;
 struct page* virt_to_page (scalar_t__) ;

__attribute__((used)) static void msc_buffer_contig_free(struct msc *msc)
{
 unsigned long off;

 dma_unmap_sg(msc_dev(msc)->parent->parent, msc->single_sgt.sgl,
       1, DMA_FROM_DEVICE);
 sg_free_table(&msc->single_sgt);

 for (off = 0; off < msc->nr_pages << PAGE_SHIFT; off += PAGE_SIZE) {
  struct page *page = virt_to_page(msc->base + off);

  page->mapping = ((void*)0);
  __free_page(page);
 }

 msc->nr_pages = 0;
}
