
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nouveau_drm {scalar_t__ dmem; } ;


 scalar_t__ is_device_private_page (struct page*) ;
 scalar_t__ page_to_dmem (struct page*) ;

__attribute__((used)) static inline bool
nouveau_dmem_page(struct nouveau_drm *drm, struct page *page)
{
 return is_device_private_page(page) && drm->dmem == page_to_dmem(page);
}
