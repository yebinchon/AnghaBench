
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pidff_device {int * reports; struct hid_device* hid; TYPE_2__* pool; int * control_id; TYPE_1__* device_control; } ;
struct hid_device {int dummy; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_3__ {int * value; } ;


 int HID_REQ_GET_REPORT ;
 int HID_REQ_SET_REPORT ;
 size_t PID_DEVICE_CONTROL ;
 size_t PID_ENABLE_ACTUATORS ;
 size_t PID_POOL ;
 size_t PID_RESET ;
 size_t PID_SIMULTANEOUS_MAX ;
 int hid_dbg (struct hid_device*,char*) ;
 int hid_hw_request (struct hid_device*,int ,int ) ;
 int hid_hw_wait (struct hid_device*) ;
 int hid_warn (struct hid_device*,char*,int) ;

__attribute__((used)) static void pidff_reset(struct pidff_device *pidff)
{
 struct hid_device *hid = pidff->hid;
 int i = 0;

 pidff->device_control->value[0] = pidff->control_id[PID_RESET];

 hid_hw_request(hid, pidff->reports[PID_DEVICE_CONTROL], HID_REQ_SET_REPORT);
 hid_hw_wait(hid);
 hid_hw_request(hid, pidff->reports[PID_DEVICE_CONTROL], HID_REQ_SET_REPORT);
 hid_hw_wait(hid);

 pidff->device_control->value[0] =
  pidff->control_id[PID_ENABLE_ACTUATORS];
 hid_hw_request(hid, pidff->reports[PID_DEVICE_CONTROL], HID_REQ_SET_REPORT);
 hid_hw_wait(hid);


 hid_hw_request(hid, pidff->reports[PID_POOL], HID_REQ_GET_REPORT);
 hid_hw_wait(hid);

 if (pidff->pool[PID_SIMULTANEOUS_MAX].value) {
  while (pidff->pool[PID_SIMULTANEOUS_MAX].value[0] < 2) {
   if (i++ > 20) {
    hid_warn(pidff->hid,
      "device reports %d simultaneous effects\n",
      pidff->pool[PID_SIMULTANEOUS_MAX].value[0]);
    break;
   }
   hid_dbg(pidff->hid, "pid_pool requested again\n");
   hid_hw_request(hid, pidff->reports[PID_POOL],
       HID_REQ_GET_REPORT);
   hid_hw_wait(hid);
  }
 }
}
