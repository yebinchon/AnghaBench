
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gt683r_led {int hdev; } ;


 int EIO ;
 int GT683R_BUFFER_SIZE ;
 int HID_FEATURE_REPORT ;
 int HID_REQ_SET_REPORT ;
 int hid_err (int ,char*,int) ;
 int hid_hw_raw_request (int ,int ,int *,int,int ,int ) ;

__attribute__((used)) static int gt683r_led_snd_msg(struct gt683r_led *led, u8 *msg)
{
 int ret;

 ret = hid_hw_raw_request(led->hdev, msg[0], msg, GT683R_BUFFER_SIZE,
    HID_FEATURE_REPORT, HID_REQ_SET_REPORT);
 if (ret != GT683R_BUFFER_SIZE) {
  hid_err(led->hdev,
   "failed to send set report request: %i\n", ret);
  if (ret < 0)
   return ret;
  return -EIO;
 }

 return 0;
}
