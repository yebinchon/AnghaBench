
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nouveau_drm {int dummy; } ;


 int get_page (struct page*) ;
 int lock_page (struct page*) ;
 int nouveau_dmem_pages_alloc (struct nouveau_drm*,int,unsigned long*) ;
 struct page* pfn_to_page (unsigned long) ;

__attribute__((used)) static struct page *
nouveau_dmem_page_alloc_locked(struct nouveau_drm *drm)
{
 unsigned long pfns[1];
 struct page *page;
 int ret;


 ret = nouveau_dmem_pages_alloc(drm, 1, pfns);
 if (ret)
  return ((void*)0);

 page = pfn_to_page(pfns[0]);
 get_page(page);
 lock_page(page);
 return page;
}
