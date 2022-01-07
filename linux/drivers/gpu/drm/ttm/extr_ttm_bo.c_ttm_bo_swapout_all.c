
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_operation_ctx {int interruptible; int no_wait_gpu; } ;
struct ttm_bo_device {int glob; } ;


 scalar_t__ ttm_bo_swapout (int ,struct ttm_operation_ctx*) ;

void ttm_bo_swapout_all(struct ttm_bo_device *bdev)
{
 struct ttm_operation_ctx ctx = {
  .interruptible = 0,
  .no_wait_gpu = 0
 };

 while (ttm_bo_swapout(bdev->glob, &ctx) == 0)
  ;
}
