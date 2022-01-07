
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
struct etnaviv_gem_object {scalar_t__ pages; TYPE_1__ base; scalar_t__ sgt; } ;


 int PAGE_SHIFT ;
 int etnaviv_gem_scatterlist_unmap (struct etnaviv_gem_object*) ;
 int kfree (scalar_t__) ;
 int kvfree (scalar_t__) ;
 int release_pages (scalar_t__,int) ;
 int sg_free_table (scalar_t__) ;

__attribute__((used)) static void etnaviv_gem_userptr_release(struct etnaviv_gem_object *etnaviv_obj)
{
 if (etnaviv_obj->sgt) {
  etnaviv_gem_scatterlist_unmap(etnaviv_obj);
  sg_free_table(etnaviv_obj->sgt);
  kfree(etnaviv_obj->sgt);
 }
 if (etnaviv_obj->pages) {
  int npages = etnaviv_obj->base.size >> PAGE_SHIFT;

  release_pages(etnaviv_obj->pages, npages);
  kvfree(etnaviv_obj->pages);
 }
}
