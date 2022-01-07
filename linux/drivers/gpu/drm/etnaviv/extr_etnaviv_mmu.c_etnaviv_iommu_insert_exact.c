
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct etnaviv_iommu_context {int mm; } ;
struct drm_mm_node {int dummy; } ;


 int DRM_MM_INSERT_LOWEST ;
 int drm_mm_insert_node_in_range (int *,struct drm_mm_node*,size_t,int ,int ,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static int etnaviv_iommu_insert_exact(struct etnaviv_iommu_context *context,
     struct drm_mm_node *node, size_t size, u64 va)
{
 return drm_mm_insert_node_in_range(&context->mm, node, size, 0, 0, va,
        va + size, DRM_MM_INSERT_LOWEST);
}
