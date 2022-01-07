
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct etnaviv_vram_mapping {scalar_t__ iova; } ;
struct etnaviv_gem_submit {int nr_bos; int flags; TYPE_1__* bos; int mmu_context; } ;
struct etnaviv_gem_object {int gpu_active; int base; } ;
struct TYPE_2__ {scalar_t__ va; struct etnaviv_vram_mapping* mapping; int flags; struct etnaviv_gem_object* obj; } ;


 int BO_PINNED ;
 int EINVAL ;
 int ETNA_SUBMIT_SOFTPIN ;
 scalar_t__ IS_ERR (struct etnaviv_vram_mapping*) ;
 int PTR_ERR (struct etnaviv_vram_mapping*) ;
 int atomic_inc (int *) ;
 struct etnaviv_vram_mapping* etnaviv_gem_mapping_get (int *,int ,scalar_t__) ;

__attribute__((used)) static int submit_pin_objects(struct etnaviv_gem_submit *submit)
{
 int i, ret = 0;

 for (i = 0; i < submit->nr_bos; i++) {
  struct etnaviv_gem_object *etnaviv_obj = submit->bos[i].obj;
  struct etnaviv_vram_mapping *mapping;

  mapping = etnaviv_gem_mapping_get(&etnaviv_obj->base,
        submit->mmu_context,
        submit->bos[i].va);
  if (IS_ERR(mapping)) {
   ret = PTR_ERR(mapping);
   break;
  }

  if ((submit->flags & ETNA_SUBMIT_SOFTPIN) &&
       submit->bos[i].va != mapping->iova)
   return -EINVAL;

  atomic_inc(&etnaviv_obj->gpu_active);

  submit->bos[i].flags |= BO_PINNED;
  submit->bos[i].mapping = mapping;
 }

 return ret;
}
