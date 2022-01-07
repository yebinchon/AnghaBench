
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_hid_desc {int wHIDDescLength; int bcdVersion; } ;
struct i2c_hid {int hdesc_buffer; struct i2c_hid_desc hdesc; struct i2c_client* client; } ;
struct i2c_client {int dev; int name; } ;


 int ENODEV ;
 int dev_err (int *,char*,...) ;
 int hid_descr_cmd ;
 int i2c_hid_command (struct i2c_client*,int *,int ,int) ;
 int i2c_hid_dbg (struct i2c_hid*,char*,...) ;
 struct i2c_hid_desc* i2c_hid_get_dmi_i2c_hid_desc_override (int ) ;
 unsigned int le16_to_cpu (int ) ;

__attribute__((used)) static int i2c_hid_fetch_hid_descriptor(struct i2c_hid *ihid)
{
 struct i2c_client *client = ihid->client;
 struct i2c_hid_desc *hdesc = &ihid->hdesc;
 unsigned int dsize;
 int ret;


 if (i2c_hid_get_dmi_i2c_hid_desc_override(client->name)) {
  i2c_hid_dbg(ihid, "Using a HID descriptor override\n");
  ihid->hdesc =
   *i2c_hid_get_dmi_i2c_hid_desc_override(client->name);
 } else {
  i2c_hid_dbg(ihid, "Fetching the HID descriptor\n");
  ret = i2c_hid_command(client, &hid_descr_cmd,
          ihid->hdesc_buffer,
          sizeof(struct i2c_hid_desc));
  if (ret) {
   dev_err(&client->dev, "hid_descr_cmd failed\n");
   return -ENODEV;
  }
 }





 if (le16_to_cpu(hdesc->bcdVersion) != 0x0100) {
  dev_err(&client->dev,
   "unexpected HID descriptor bcdVersion (0x%04hx)\n",
   le16_to_cpu(hdesc->bcdVersion));
  return -ENODEV;
 }


 dsize = le16_to_cpu(hdesc->wHIDDescLength);
 if (dsize != sizeof(struct i2c_hid_desc)) {
  dev_err(&client->dev, "weird size of HID descriptor (%u)\n",
   dsize);
  return -ENODEV;
 }
 i2c_hid_dbg(ihid, "HID Descriptor: %*ph\n", dsize, ihid->hdesc_buffer);
 return 0;
}
