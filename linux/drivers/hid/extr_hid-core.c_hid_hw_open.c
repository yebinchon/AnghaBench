
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_device {int ll_open_lock; int ll_open_count; TYPE_1__* ll_driver; } ;
struct TYPE_2__ {int (* open ) (struct hid_device*) ;} ;


 int mutex_lock_killable (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct hid_device*) ;

int hid_hw_open(struct hid_device *hdev)
{
 int ret;

 ret = mutex_lock_killable(&hdev->ll_open_lock);
 if (ret)
  return ret;

 if (!hdev->ll_open_count++) {
  ret = hdev->ll_driver->open(hdev);
  if (ret)
   hdev->ll_open_count--;
 }

 mutex_unlock(&hdev->ll_open_lock);
 return ret;
}
