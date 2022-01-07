
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int io_reserved_vm; } ;
struct ttm_mem_reg {TYPE_1__ bus; } ;
struct ttm_buffer_object {int bdev; int io_reserve_lru; struct ttm_mem_reg mem; } ;


 int list_del_init (int *) ;
 int ttm_mem_io_free (int ,struct ttm_mem_reg*) ;

void ttm_mem_io_free_vm(struct ttm_buffer_object *bo)
{
 struct ttm_mem_reg *mem = &bo->mem;

 if (mem->bus.io_reserved_vm) {
  mem->bus.io_reserved_vm = 0;
  list_del_init(&bo->io_reserve_lru);
  ttm_mem_io_free(bo->bdev, mem);
 }
}
