
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_mem_type_manager {int flags; } ;
struct TYPE_2__ {int size; int is_iomem; scalar_t__ base; scalar_t__ offset; int * addr; } ;
struct ttm_mem_reg {size_t mem_type; int num_pages; TYPE_1__ bus; } ;
struct ttm_bo_device {struct ttm_mem_type_manager* man; } ;


 int EINVAL ;
 int PAGE_SHIFT ;
 int TTM_MEMTYPE_FLAG_MAPPABLE ;



__attribute__((used)) static int virtio_gpu_ttm_io_mem_reserve(struct ttm_bo_device *bdev,
      struct ttm_mem_reg *mem)
{
 struct ttm_mem_type_manager *man = &bdev->man[mem->mem_type];

 mem->bus.addr = ((void*)0);
 mem->bus.offset = 0;
 mem->bus.size = mem->num_pages << PAGE_SHIFT;
 mem->bus.base = 0;
 mem->bus.is_iomem = 0;
 if (!(man->flags & TTM_MEMTYPE_FLAG_MAPPABLE))
  return -EINVAL;
 switch (mem->mem_type) {
 case 129:
 case 128:

  return 0;
 default:
  return -EINVAL;
 }
 return 0;
}
