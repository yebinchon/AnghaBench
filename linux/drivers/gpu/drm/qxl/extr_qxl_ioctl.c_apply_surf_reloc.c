
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct qxl_reloc_info {int dst_offset; int dst_bo; TYPE_1__* src_bo; } ;
struct qxl_device {int dummy; } ;
struct TYPE_2__ {int surface_id; int is_primary; } ;


 int PAGE_MASK ;
 void* qxl_bo_kmap_atomic_page (struct qxl_device*,int ,int) ;
 int qxl_bo_kunmap_atomic_page (struct qxl_device*,int ,void*) ;

__attribute__((used)) static void
apply_surf_reloc(struct qxl_device *qdev, struct qxl_reloc_info *info)
{
 uint32_t id = 0;
 void *reloc_page;

 if (info->src_bo && !info->src_bo->is_primary)
  id = info->src_bo->surface_id;

 reloc_page = qxl_bo_kmap_atomic_page(qdev, info->dst_bo, info->dst_offset & PAGE_MASK);
 *(uint32_t *)(reloc_page + (info->dst_offset & ~PAGE_MASK)) = id;
 qxl_bo_kunmap_atomic_page(qdev, info->dst_bo, reloc_page);
}
