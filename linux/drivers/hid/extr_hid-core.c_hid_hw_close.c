
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_device {int ll_open_lock; TYPE_1__* ll_driver; int ll_open_count; } ;
struct TYPE_2__ {int (* close ) (struct hid_device*) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct hid_device*) ;

void hid_hw_close(struct hid_device *hdev)
{
 mutex_lock(&hdev->ll_open_lock);
 if (!--hdev->ll_open_count)
  hdev->ll_driver->close(hdev);
 mutex_unlock(&hdev->ll_open_lock);
}
