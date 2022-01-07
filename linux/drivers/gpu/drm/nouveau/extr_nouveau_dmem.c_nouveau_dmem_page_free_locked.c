
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nouveau_drm {int dummy; } ;


 int put_page (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static void
nouveau_dmem_page_free_locked(struct nouveau_drm *drm, struct page *page)
{
 unlock_page(page);
 put_page(page);
}
