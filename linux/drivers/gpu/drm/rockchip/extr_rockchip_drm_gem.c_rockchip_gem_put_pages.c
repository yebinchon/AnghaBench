
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_gem_object {int pages; int base; int sgt; } ;


 int drm_gem_put_pages (int *,int ,int,int) ;
 int kfree (int ) ;
 int sg_free_table (int ) ;

__attribute__((used)) static void rockchip_gem_put_pages(struct rockchip_gem_object *rk_obj)
{
 sg_free_table(rk_obj->sgt);
 kfree(rk_obj->sgt);
 drm_gem_put_pages(&rk_obj->base, rk_obj->pages, 1, 1);
}
