
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;

__attribute__((used)) static int smm665_read16(struct i2c_client *client, int reg)
{
 int rv, val;

 rv = i2c_smbus_read_byte_data(client, reg);
 if (rv < 0)
  return rv;
 val = rv << 8;
 rv = i2c_smbus_read_byte_data(client, reg + 1);
 if (rv < 0)
  return rv;
 val |= rv;
 return val;
}
