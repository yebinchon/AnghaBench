
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
typedef int buf ;
typedef int __be16 ;


 int EIO ;
 int be16_to_cpu (int ) ;
 int i2c_master_recv (struct i2c_client*,char*,int) ;

__attribute__((used)) static int ltc2471_get_value(struct i2c_client *client)
{
 int ret;
 __be16 buf;

 ret = i2c_master_recv(client, (char *)&buf, sizeof(buf));
 if (ret < 0)
  return ret;
 if (ret != sizeof(buf))
  return -EIO;


 return be16_to_cpu(buf);
}
