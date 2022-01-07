
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsc2007 {int dummy; } ;
struct i2c_client {int dev; } ;


 int EINVAL ;
 int dev_err (int *,char*) ;

__attribute__((used)) static int tsc2007_probe_dt(struct i2c_client *client, struct tsc2007 *ts)
{
 dev_err(&client->dev, "platform data is required!\n");
 return -EINVAL;
}
