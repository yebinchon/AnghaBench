
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_device {int gc_work; int release_ring; } ;


 int flush_work (int *) ;
 int qxl_check_idle (int ) ;
 int schedule_work (int *) ;

bool qxl_queue_garbage_collect(struct qxl_device *qdev, bool flush)
{
 if (!qxl_check_idle(qdev->release_ring)) {
  schedule_work(&qdev->gc_work);
  if (flush)
   flush_work(&qdev->gc_work);
  return 1;
 }
 return 0;
}
