
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_device {TYPE_1__* ll_driver; } ;
struct TYPE_2__ {int (* start ) (struct hid_device*) ;int (* stop ) (struct hid_device*) ;} ;


 int hid_connect (struct hid_device*,unsigned int) ;
 int stub1 (struct hid_device*) ;
 int stub2 (struct hid_device*) ;

int hid_hw_start(struct hid_device *hdev, unsigned int connect_mask)
{
 int error;

 error = hdev->ll_driver->start(hdev);
 if (error)
  return error;

 if (connect_mask) {
  error = hid_connect(hdev, connect_mask);
  if (error) {
   hdev->ll_driver->stop(hdev);
   return error;
  }
 }

 return 0;
}
