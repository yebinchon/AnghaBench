
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int dummy; } ;


 int ENODEV ;
 int SIL164_DEVICE_HI ;
 int SIL164_DEVICE_LO ;
 int SIL164_REVISION ;
 int SIL164_VENDOR_HI ;
 int SIL164_VENDOR_LO ;
 int sil164_dbg (struct i2c_client*,char*,int,int,int) ;
 int sil164_info (struct i2c_client*,char*,int,int,int) ;
 int sil164_read (struct i2c_client*,int ) ;

__attribute__((used)) static int
sil164_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 int vendor = sil164_read(client, SIL164_VENDOR_HI) << 8 |
  sil164_read(client, SIL164_VENDOR_LO);
 int device = sil164_read(client, SIL164_DEVICE_HI) << 8 |
  sil164_read(client, SIL164_DEVICE_LO);
 int rev = sil164_read(client, SIL164_REVISION);

 if (vendor != 0x1 || device != 0x6) {
  sil164_dbg(client, "Unknown device %x:%x.%x\n",
      vendor, device, rev);
  return -ENODEV;
 }

 sil164_info(client, "Detected device %x:%x.%x\n",
      vendor, device, rev);

 return 0;
}
