
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_dma_sg_buf {unsigned long size; struct page** pages; } ;
struct page {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int __GFP_NOWARN ;
 int __GFP_ZERO ;
 int __free_page (struct page*) ;
 struct page* alloc_pages (int,int) ;
 int get_order (unsigned long) ;
 int split_page (struct page*,int) ;

__attribute__((used)) static int vb2_dma_sg_alloc_compacted(struct vb2_dma_sg_buf *buf,
  gfp_t gfp_flags)
{
 unsigned int last_page = 0;
 unsigned long size = buf->size;

 while (size > 0) {
  struct page *pages;
  int order;
  int i;

  order = get_order(size);

  if ((PAGE_SIZE << order) > size)
   order--;

  pages = ((void*)0);
  while (!pages) {
   pages = alloc_pages(GFP_KERNEL | __GFP_ZERO |
     __GFP_NOWARN | gfp_flags, order);
   if (pages)
    break;

   if (order == 0) {
    while (last_page--)
     __free_page(buf->pages[last_page]);
    return -ENOMEM;
   }
   order--;
  }

  split_page(pages, order);
  for (i = 0; i < (1 << order); i++)
   buf->pages[last_page++] = &pages[i];

  size -= PAGE_SIZE << order;
 }

 return 0;
}
