
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int start; } ;
struct etnaviv_vram_mapping {TYPE_2__ vram_node; struct etnaviv_gem_object* object; } ;
struct etnaviv_iommu_context {int dummy; } ;
struct TYPE_3__ {int size; } ;
struct etnaviv_gem_object {TYPE_1__ base; int sgt; } ;


 int drm_mm_remove_node (TYPE_2__*) ;
 int etnaviv_iommu_unmap (struct etnaviv_iommu_context*,int ,int ,int ) ;

__attribute__((used)) static void etnaviv_iommu_remove_mapping(struct etnaviv_iommu_context *context,
 struct etnaviv_vram_mapping *mapping)
{
 struct etnaviv_gem_object *etnaviv_obj = mapping->object;

 etnaviv_iommu_unmap(context, mapping->vram_node.start,
       etnaviv_obj->sgt, etnaviv_obj->base.size);
 drm_mm_remove_node(&mapping->vram_node);
}
