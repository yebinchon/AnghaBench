
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_hid {unsigned int bufsize; } ;
struct i2c_client {int irq; } ;
struct hid_device {struct i2c_client* driver_data; } ;


 int HID_FEATURE_REPORT ;
 int HID_INPUT_REPORT ;
 unsigned int HID_MIN_BUFFER_SIZE ;
 int HID_OUTPUT_REPORT ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 struct i2c_hid* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_hid_alloc_buffers (struct i2c_hid*,unsigned int) ;
 int i2c_hid_find_max_report (struct hid_device*,int ,unsigned int*) ;
 int i2c_hid_free_buffers (struct i2c_hid*) ;

__attribute__((used)) static int i2c_hid_start(struct hid_device *hid)
{
 struct i2c_client *client = hid->driver_data;
 struct i2c_hid *ihid = i2c_get_clientdata(client);
 int ret;
 unsigned int bufsize = HID_MIN_BUFFER_SIZE;

 i2c_hid_find_max_report(hid, HID_INPUT_REPORT, &bufsize);
 i2c_hid_find_max_report(hid, HID_OUTPUT_REPORT, &bufsize);
 i2c_hid_find_max_report(hid, HID_FEATURE_REPORT, &bufsize);

 if (bufsize > ihid->bufsize) {
  disable_irq(client->irq);
  i2c_hid_free_buffers(ihid);

  ret = i2c_hid_alloc_buffers(ihid, bufsize);
  enable_irq(client->irq);

  if (ret)
   return ret;
 }

 return 0;
}
