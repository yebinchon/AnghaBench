
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int addr; } ;


 unsigned int ZPA2326_DEVICE_ID ;
 unsigned int ZPA2326_DEVICE_ID_SA0_SHIFT ;
 unsigned int ZPA2326_SA0 (int ) ;

__attribute__((used)) static unsigned int zpa2326_i2c_hwid(const struct i2c_client *client)
{




 return (ZPA2326_DEVICE_ID |
  ((client->addr & BIT(0)) << (1)));
}
