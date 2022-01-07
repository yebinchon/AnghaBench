
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct qxl_reloc_info {int dst_offset; int dst_bo; int src_offset; int src_bo; } ;
struct qxl_device {int dummy; } ;


 int PAGE_MASK ;
 void* qxl_bo_kmap_atomic_page (struct qxl_device*,int ,int) ;
 int qxl_bo_kunmap_atomic_page (struct qxl_device*,int ,void*) ;
 int qxl_bo_physical_address (struct qxl_device*,int ,int ) ;

__attribute__((used)) static void
apply_reloc(struct qxl_device *qdev, struct qxl_reloc_info *info)
{
 void *reloc_page;

 reloc_page = qxl_bo_kmap_atomic_page(qdev, info->dst_bo, info->dst_offset & PAGE_MASK);
 *(uint64_t *)(reloc_page + (info->dst_offset & ~PAGE_MASK)) = qxl_bo_physical_address(qdev,
                 info->src_bo,
                 info->src_offset);
 qxl_bo_kunmap_atomic_page(qdev, info->dst_bo, reloc_page);
}
