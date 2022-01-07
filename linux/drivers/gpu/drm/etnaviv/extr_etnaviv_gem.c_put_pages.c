
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_gem_object {int * pages; int base; int * sgt; } ;


 int drm_gem_put_pages (int *,int *,int,int) ;
 int etnaviv_gem_scatterlist_unmap (struct etnaviv_gem_object*) ;
 int kfree (int *) ;
 int sg_free_table (int *) ;

__attribute__((used)) static void put_pages(struct etnaviv_gem_object *etnaviv_obj)
{
 if (etnaviv_obj->sgt) {
  etnaviv_gem_scatterlist_unmap(etnaviv_obj);
  sg_free_table(etnaviv_obj->sgt);
  kfree(etnaviv_obj->sgt);
  etnaviv_obj->sgt = ((void*)0);
 }
 if (etnaviv_obj->pages) {
  drm_gem_put_pages(&etnaviv_obj->base, etnaviv_obj->pages,
      1, 0);

  etnaviv_obj->pages = ((void*)0);
 }
}
