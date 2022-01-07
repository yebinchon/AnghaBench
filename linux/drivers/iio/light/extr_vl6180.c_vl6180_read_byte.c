
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;
typedef int data ;


 int vl6180_read (struct i2c_client*,int ,int*,int) ;

__attribute__((used)) static int vl6180_read_byte(struct i2c_client *client, u16 cmd)
{
 u8 data;
 int ret;

 ret = vl6180_read(client, cmd, &data, sizeof(data));
 if (ret < 0)
  return ret;

 return data;
}
