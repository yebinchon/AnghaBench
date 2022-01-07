
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i2c_device_id {scalar_t__ driver_data; } ;
struct TYPE_6__ {struct dvb_pll_config* platform_data; } ;
struct i2c_client {TYPE_3__ dev; int adapter; int addr; } ;
struct dvb_pll_config {struct dvb_frontend* fe; } ;
struct TYPE_4__ {int * release; } ;
struct TYPE_5__ {TYPE_1__ tuner_ops; } ;
struct dvb_frontend {TYPE_2__ ops; } ;


 int ENOMEM ;
 int dev_info (TYPE_3__*,char*) ;
 int dvb_pll_attach (struct dvb_frontend*,int ,int ,unsigned int) ;
 int i2c_set_clientdata (struct i2c_client*,struct dvb_frontend*) ;

__attribute__((used)) static int
dvb_pll_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 struct dvb_pll_config *cfg;
 struct dvb_frontend *fe;
 unsigned int desc_id;

 cfg = client->dev.platform_data;
 fe = cfg->fe;
 i2c_set_clientdata(client, fe);
 desc_id = (unsigned int) id->driver_data;

 if (!dvb_pll_attach(fe, client->addr, client->adapter, desc_id))
  return -ENOMEM;
 fe->ops.tuner_ops.release = ((void*)0);
 dev_info(&client->dev, "DVB Simple Tuner attached.\n");
 return 0;
}
