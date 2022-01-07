
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhid_device {int iofl; int wait; } ;
struct hid_device {struct usbhid_device* driver_data; } ;


 int HID_CTRL_RUNNING ;
 int HID_OUT_RUNNING ;
 int HZ ;
 int dbg_hid (char*) ;
 int test_bit (int ,int *) ;
 int wait_event_timeout (int ,int,int) ;

__attribute__((used)) static int usbhid_wait_io(struct hid_device *hid)
{
 struct usbhid_device *usbhid = hid->driver_data;

 if (!wait_event_timeout(usbhid->wait,
    (!test_bit(HID_CTRL_RUNNING, &usbhid->iofl) &&
    !test_bit(HID_OUT_RUNNING, &usbhid->iofl)),
     10*HZ)) {
  dbg_hid("timeout waiting for ctrl or out queue to clear\n");
  return -1;
 }

 return 0;
}
