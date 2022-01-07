
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pidff_device {int * reports; int hid; int * device_gain; } ;
struct input_dev {TYPE_1__* ff; } ;
struct TYPE_2__ {struct pidff_device* private; } ;


 int HID_REQ_SET_REPORT ;
 size_t PID_DEVICE_GAIN ;
 size_t PID_DEVICE_GAIN_FIELD ;
 int hid_hw_request (int ,int ,int ) ;
 int pidff_set (int *,int ) ;

__attribute__((used)) static void pidff_set_gain(struct input_dev *dev, u16 gain)
{
 struct pidff_device *pidff = dev->ff->private;

 pidff_set(&pidff->device_gain[PID_DEVICE_GAIN_FIELD], gain);
 hid_hw_request(pidff->hid, pidff->reports[PID_DEVICE_GAIN],
   HID_REQ_SET_REPORT);
}
