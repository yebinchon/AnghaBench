
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m88ds3103_dev {TYPE_1__* muxc; } ;
struct i2c_client {int dev; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {struct i2c_adapter** adapter; } ;


 int dev_dbg (int *,char*) ;
 struct m88ds3103_dev* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static struct i2c_adapter *m88ds3103_get_i2c_adapter(struct i2c_client *client)
{
 struct m88ds3103_dev *dev = i2c_get_clientdata(client);

 dev_dbg(&client->dev, "\n");

 return dev->muxc->adapter[0];
}
