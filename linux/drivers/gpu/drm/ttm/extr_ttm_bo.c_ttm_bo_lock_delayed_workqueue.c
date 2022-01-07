
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_bo_device {int wq; } ;


 int cancel_delayed_work_sync (int *) ;

int ttm_bo_lock_delayed_workqueue(struct ttm_bo_device *bdev)
{
 return cancel_delayed_work_sync(&bdev->wq);
}
