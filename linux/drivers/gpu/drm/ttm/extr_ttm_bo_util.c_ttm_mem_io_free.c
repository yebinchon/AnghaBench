
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttm_mem_type_manager {int io_reserve_fastpath; } ;
struct TYPE_4__ {scalar_t__ io_reserved_count; } ;
struct ttm_mem_reg {size_t mem_type; TYPE_2__ bus; } ;
struct ttm_bo_device {TYPE_1__* driver; struct ttm_mem_type_manager* man; } ;
struct TYPE_3__ {int (* io_mem_free ) (struct ttm_bo_device*,struct ttm_mem_reg*) ;scalar_t__ io_mem_reserve; } ;


 scalar_t__ likely (int ) ;
 int stub1 (struct ttm_bo_device*,struct ttm_mem_reg*) ;

void ttm_mem_io_free(struct ttm_bo_device *bdev,
       struct ttm_mem_reg *mem)
{
 struct ttm_mem_type_manager *man = &bdev->man[mem->mem_type];

 if (likely(man->io_reserve_fastpath))
  return;

 if (bdev->driver->io_mem_reserve &&
     --mem->bus.io_reserved_count == 0 &&
     bdev->driver->io_mem_free)
  bdev->driver->io_mem_free(bdev, mem);

}
