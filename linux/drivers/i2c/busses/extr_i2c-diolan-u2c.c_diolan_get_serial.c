
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i2c_diolan_u2c {TYPE_1__* interface; scalar_t__ ibuffer; } ;
struct TYPE_2__ {int dev; } ;


 int CMD_GET_SERIAL ;
 int dev_info (int *,char*,int ) ;
 int diolan_usb_cmd (struct i2c_diolan_u2c*,int ,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void diolan_get_serial(struct i2c_diolan_u2c *dev)
{
 int ret;
 u32 serial;

 ret = diolan_usb_cmd(dev, CMD_GET_SERIAL, 1);
 if (ret >= 4) {
  serial = le32_to_cpu(*(u32 *)dev->ibuffer);
  dev_info(&dev->interface->dev,
    "Diolan U2C serial number %u\n", serial);
 }
}
