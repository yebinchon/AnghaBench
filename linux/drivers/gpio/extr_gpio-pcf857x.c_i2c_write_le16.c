
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct i2c_client {int dummy; } ;


 int i2c_master_send (struct i2c_client*,unsigned int*,int) ;

__attribute__((used)) static int i2c_write_le16(struct i2c_client *client, unsigned word)
{
 u8 buf[2] = { word & 0xff, word >> 8, };
 int status;

 status = i2c_master_send(client, buf, 2);
 return (status < 0) ? status : 0;
}
