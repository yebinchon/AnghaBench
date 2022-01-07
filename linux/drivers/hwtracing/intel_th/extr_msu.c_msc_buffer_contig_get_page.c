
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct msc {unsigned long nr_pages; scalar_t__ base; } ;


 unsigned long PAGE_SHIFT ;
 struct page* virt_to_page (scalar_t__) ;

__attribute__((used)) static struct page *msc_buffer_contig_get_page(struct msc *msc,
            unsigned long pgoff)
{
 if (pgoff >= msc->nr_pages)
  return ((void*)0);

 return virt_to_page(msc->base + (pgoff << PAGE_SHIFT));
}
