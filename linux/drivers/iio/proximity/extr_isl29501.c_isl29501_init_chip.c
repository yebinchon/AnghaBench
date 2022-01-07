
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isl29501_private {TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int ENODEV ;
 int ISL29501_DEVICE_ID ;
 int ISL29501_ID ;
 int dev_err (int *,char*,...) ;
 int i2c_smbus_read_byte_data (TYPE_1__*,int ) ;
 int isl29501_begin_acquisition (struct isl29501_private*) ;
 int isl29501_reset_registers (struct isl29501_private*) ;

__attribute__((used)) static int isl29501_init_chip(struct isl29501_private *isl29501)
{
 int ret;

 ret = i2c_smbus_read_byte_data(isl29501->client, ISL29501_DEVICE_ID);
 if (ret < 0) {
  dev_err(&isl29501->client->dev, "Error reading device id\n");
  return ret;
 }

 if (ret != ISL29501_ID) {
  dev_err(&isl29501->client->dev,
   "Wrong chip id, got %x expected %x\n",
   ret, ISL29501_DEVICE_ID);
  return -ENODEV;
 }

 ret = isl29501_reset_registers(isl29501);
 if (ret < 0)
  return ret;

 return isl29501_begin_acquisition(isl29501);
}
