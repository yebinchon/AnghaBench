
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned long base; unsigned long offset; } ;
struct TYPE_6__ {TYPE_2__ bus; } ;
struct ttm_buffer_object {TYPE_3__ mem; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {TYPE_1__* driver; } ;
struct TYPE_4__ {unsigned long (* io_mem_pfn ) (struct ttm_buffer_object*,unsigned long) ;} ;


 unsigned long PAGE_SHIFT ;
 unsigned long stub1 (struct ttm_buffer_object*,unsigned long) ;

__attribute__((used)) static unsigned long ttm_bo_io_mem_pfn(struct ttm_buffer_object *bo,
           unsigned long page_offset)
{
 struct ttm_bo_device *bdev = bo->bdev;

 if (bdev->driver->io_mem_pfn)
  return bdev->driver->io_mem_pfn(bo, page_offset);

 return ((bo->mem.bus.base + bo->mem.bus.offset) >> PAGE_SHIFT)
  + page_offset;
}
