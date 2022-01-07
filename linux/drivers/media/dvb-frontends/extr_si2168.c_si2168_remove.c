
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * release; } ;
struct TYPE_4__ {int * demodulator_priv; TYPE_1__ ops; } ;
struct si2168_dev {TYPE_2__ fe; int muxc; } ;
struct i2c_client {int dev; } ;


 int dev_dbg (int *,char*) ;
 struct si2168_dev* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_mux_del_adapters (int ) ;
 int kfree (struct si2168_dev*) ;

__attribute__((used)) static int si2168_remove(struct i2c_client *client)
{
 struct si2168_dev *dev = i2c_get_clientdata(client);

 dev_dbg(&client->dev, "\n");

 i2c_mux_del_adapters(dev->muxc);

 dev->fe.ops.release = ((void*)0);
 dev->fe.demodulator_priv = ((void*)0);

 kfree(dev);

 return 0;
}
