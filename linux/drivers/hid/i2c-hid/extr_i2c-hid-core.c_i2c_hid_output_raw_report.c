
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_hid {int reset_lock; } ;
struct i2c_client {int dummy; } ;
struct hid_device {struct i2c_client* driver_data; } ;
typedef int __u8 ;


 int EINVAL ;
 unsigned char HID_FEATURE_REPORT ;
 unsigned char HID_INPUT_REPORT ;
 struct i2c_hid* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_hid_set_or_send_report (struct i2c_client*,int,int,int*,size_t,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int i2c_hid_output_raw_report(struct hid_device *hid, __u8 *buf,
  size_t count, unsigned char report_type, bool use_data)
{
 struct i2c_client *client = hid->driver_data;
 struct i2c_hid *ihid = i2c_get_clientdata(client);
 int report_id = buf[0];
 int ret;

 if (report_type == HID_INPUT_REPORT)
  return -EINVAL;

 mutex_lock(&ihid->reset_lock);

 if (report_id) {
  buf++;
  count--;
 }

 ret = i2c_hid_set_or_send_report(client,
    report_type == HID_FEATURE_REPORT ? 0x03 : 0x02,
    report_id, buf, count, use_data);

 if (report_id && ret >= 0)
  ret++;

 mutex_unlock(&ihid->reset_lock);

 return ret;
}
