
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hid_device {int dummy; } ;


 int EAGAIN ;
 int ETIMEDOUT ;
 int HID_REQ_SET_REPORT ;
 int hid_err (struct hid_device*,char*,int) ;
 int hid_hw_raw_request (struct hid_device*,int ,int *,size_t,int ,int ) ;

__attribute__((used)) static int wacom_set_report(struct hid_device *hdev, u8 type, u8 *buf,
       size_t size, unsigned int retries)
{
 int retval;

 do {
  retval = hid_hw_raw_request(hdev, buf[0], buf, size, type,
    HID_REQ_SET_REPORT);
 } while ((retval == -ETIMEDOUT || retval == -EAGAIN) && --retries);

 if (retval < 0)
  hid_err(hdev, "wacom_set_report: ran out of retries "
   "(last error = %d)\n", retval);

 return retval;
}
