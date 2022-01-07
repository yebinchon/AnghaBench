
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_drm_gem_obj {scalar_t__ pages; scalar_t__ kvaddr; } ;
struct drm_gem_object {int dummy; } ;


 int kfree (void*) ;
 struct mtk_drm_gem_obj* to_mtk_gem_obj (struct drm_gem_object*) ;
 int vunmap (void*) ;

void mtk_drm_gem_prime_vunmap(struct drm_gem_object *obj, void *vaddr)
{
 struct mtk_drm_gem_obj *mtk_gem = to_mtk_gem_obj(obj);

 if (!mtk_gem->pages)
  return;

 vunmap(vaddr);
 mtk_gem->kvaddr = 0;
 kfree((void *)mtk_gem->pages);
}
