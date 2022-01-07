
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int ENODATA ;


__attribute__((used)) static int ltc3815_read_byte_data(struct i2c_client *client, int page, int reg)
{
 int ret;

 switch (reg) {
 case 128:






  ret = 0x40;
  break;
 default:
  ret = -ENODATA;
  break;
 }
 return ret;
}
