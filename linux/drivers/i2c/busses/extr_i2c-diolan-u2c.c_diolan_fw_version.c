
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_diolan_u2c {scalar_t__* ibuffer; TYPE_1__* interface; } ;
struct TYPE_2__ {int dev; } ;


 int CMD_GET_FW_VERSION ;
 int dev_info (int *,char*,unsigned int,unsigned int) ;
 int diolan_usb_cmd (struct i2c_diolan_u2c*,int ,int) ;

__attribute__((used)) static void diolan_fw_version(struct i2c_diolan_u2c *dev)
{
 int ret;

 ret = diolan_usb_cmd(dev, CMD_GET_FW_VERSION, 1);
 if (ret >= 2)
  dev_info(&dev->interface->dev,
    "Diolan U2C firmware version %u.%u\n",
    (unsigned int)dev->ibuffer[0],
    (unsigned int)dev->ibuffer[1]);
}
