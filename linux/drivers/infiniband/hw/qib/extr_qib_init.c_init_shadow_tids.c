
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int cfgctxts; int rcvtidcnt; struct page** pageshadow; int * physshadow; } ;
struct page {int dummy; } ;
typedef int dma_addr_t ;


 int array_size (int,int) ;
 int vfree (struct page**) ;
 void* vzalloc (int ) ;

__attribute__((used)) static void init_shadow_tids(struct qib_devdata *dd)
{
 struct page **pages;
 dma_addr_t *addrs;

 pages = vzalloc(array_size(sizeof(struct page *),
       dd->cfgctxts * dd->rcvtidcnt));
 if (!pages)
  goto bail;

 addrs = vzalloc(array_size(sizeof(dma_addr_t),
       dd->cfgctxts * dd->rcvtidcnt));
 if (!addrs)
  goto bail_free;

 dd->pageshadow = pages;
 dd->physshadow = addrs;
 return;

bail_free:
 vfree(pages);
bail:
 dd->pageshadow = ((void*)0);
}
