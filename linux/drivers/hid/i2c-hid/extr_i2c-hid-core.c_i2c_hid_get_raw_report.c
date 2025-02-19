
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_hid {int* rawbuf; scalar_t__ bufsize; } ;
struct i2c_client {int dummy; } ;
struct hid_device {struct i2c_client* driver_data; } ;
typedef int __u8 ;


 int EINVAL ;
 unsigned char HID_FEATURE_REPORT ;
 unsigned char HID_OUTPUT_REPORT ;
 struct i2c_hid* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_hid_get_report (struct i2c_client*,int,unsigned char,int*,size_t) ;
 int memcpy (int *,int*,size_t) ;
 size_t min (size_t,size_t) ;

__attribute__((used)) static int i2c_hid_get_raw_report(struct hid_device *hid,
  unsigned char report_number, __u8 *buf, size_t count,
  unsigned char report_type)
{
 struct i2c_client *client = hid->driver_data;
 struct i2c_hid *ihid = i2c_get_clientdata(client);
 size_t ret_count, ask_count;
 int ret;

 if (report_type == HID_OUTPUT_REPORT)
  return -EINVAL;


 ask_count = min(count + 2, (size_t)ihid->bufsize);

 ret = i2c_hid_get_report(client,
   report_type == HID_FEATURE_REPORT ? 0x03 : 0x01,
   report_number, ihid->rawbuf, ask_count);

 if (ret < 0)
  return ret;

 ret_count = ihid->rawbuf[0] | (ihid->rawbuf[1] << 8);

 if (ret_count <= 2)
  return 0;

 ret_count = min(ret_count, ask_count);


 count = min(count, ret_count - 2);
 memcpy(buf, ihid->rawbuf + 2, count);

 return count;
}
