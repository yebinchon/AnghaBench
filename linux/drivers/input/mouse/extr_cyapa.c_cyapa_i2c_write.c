
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct i2c_client {int dummy; } ;
struct cyapa {struct i2c_client* client; } ;
typedef int buf ;


 int EIO ;
 int ENOMEM ;
 int i2c_master_send (struct i2c_client*,char*,size_t) ;
 int memcpy (char*,void const*,size_t) ;

__attribute__((used)) static int cyapa_i2c_write(struct cyapa *cyapa, u8 reg,
      size_t len, const void *values)
{
 struct i2c_client *client = cyapa->client;
 char buf[32];
 int ret;

 if (len > sizeof(buf) - 1)
  return -ENOMEM;

 buf[0] = reg;
 memcpy(&buf[1], values, len);

 ret = i2c_master_send(client, buf, len + 1);
 if (ret != len + 1)
  return ret < 0 ? ret : -EIO;

 return 0;
}
