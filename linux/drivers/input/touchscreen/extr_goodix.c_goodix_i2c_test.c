
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int GOODIX_REG_ID ;
 int dev_err (int *,char*,int,int) ;
 int goodix_i2c_read (struct i2c_client*,int ,int *,int) ;
 int msleep (int) ;

__attribute__((used)) static int goodix_i2c_test(struct i2c_client *client)
{
 int retry = 0;
 int error;
 u8 test;

 while (retry++ < 2) {
  error = goodix_i2c_read(client, GOODIX_REG_ID,
     &test, 1);
  if (!error)
   return 0;

  dev_err(&client->dev, "i2c test failed attempt %d: %d\n",
   retry, error);
  msleep(20);
 }

 return error;
}
