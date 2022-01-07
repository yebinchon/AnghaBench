
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_device {TYPE_1__* ll_driver; } ;
struct TYPE_2__ {int (* stop ) (struct hid_device*) ;} ;


 int hid_disconnect (struct hid_device*) ;
 int stub1 (struct hid_device*) ;

void hid_hw_stop(struct hid_device *hdev)
{
 hid_disconnect(hdev);
 hdev->ll_driver->stop(hdev);
}
