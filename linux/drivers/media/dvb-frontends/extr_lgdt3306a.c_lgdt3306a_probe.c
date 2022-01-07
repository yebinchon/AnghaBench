
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * release; } ;
struct TYPE_10__ {TYPE_1__ ops; } ;
struct lgdt3306a_state {struct dvb_frontend** fe; TYPE_4__* muxc; int * i2c_adapter; TYPE_2__ frontend; int i2c_addr; } ;
struct lgdt3306a_config {struct dvb_frontend** fe; TYPE_4__* muxc; int * i2c_adapter; TYPE_2__ frontend; int i2c_addr; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_13__ {int platform_data; } ;
struct i2c_client {TYPE_5__ dev; int adapter; int addr; } ;
struct TYPE_11__ {int * i2c_gate_ctrl; } ;
struct dvb_frontend {TYPE_3__ ops; struct lgdt3306a_state* demodulator_priv; } ;
struct TYPE_12__ {int * adapter; struct i2c_client* priv; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_MUX_LOCKED ;
 int dev_info (TYPE_5__*,char*) ;
 int dev_warn (TYPE_5__*,char*,int) ;
 int i2c_mux_add_adapter (TYPE_4__*,int ,int ,int ) ;
 TYPE_4__* i2c_mux_alloc (int ,TYPE_5__*,int,int ,int ,int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct lgdt3306a_state*) ;
 int kfree (struct lgdt3306a_state*) ;
 struct lgdt3306a_state* kmemdup (int ,int,int ) ;
 struct dvb_frontend* lgdt3306a_attach (struct lgdt3306a_state*,int ) ;
 int lgdt3306a_deselect ;
 int lgdt3306a_select ;

__attribute__((used)) static int lgdt3306a_probe(struct i2c_client *client,
  const struct i2c_device_id *id)
{
 struct lgdt3306a_config *config;
 struct lgdt3306a_state *state;
 struct dvb_frontend *fe;
 int ret;

 config = kmemdup(client->dev.platform_data,
    sizeof(struct lgdt3306a_config), GFP_KERNEL);
 if (config == ((void*)0)) {
  ret = -ENOMEM;
  goto fail;
 }

 config->i2c_addr = client->addr;
 fe = lgdt3306a_attach(config, client->adapter);
 if (fe == ((void*)0)) {
  ret = -ENODEV;
  goto err_fe;
 }

 i2c_set_clientdata(client, fe->demodulator_priv);
 state = fe->demodulator_priv;
 state->frontend.ops.release = ((void*)0);


 state->muxc = i2c_mux_alloc(client->adapter, &client->dev,
      1, 0, I2C_MUX_LOCKED,
      lgdt3306a_select, lgdt3306a_deselect);
 if (!state->muxc) {
  ret = -ENOMEM;
  goto err_kfree;
 }
 state->muxc->priv = client;
 ret = i2c_mux_add_adapter(state->muxc, 0, 0, 0);
 if (ret)
  goto err_kfree;


 fe->ops.i2c_gate_ctrl = ((void*)0);
 *config->i2c_adapter = state->muxc->adapter[0];
 *config->fe = fe;

 dev_info(&client->dev, "LG Electronics LGDT3306A successfully identified\n");

 return 0;

err_kfree:
 kfree(state);
err_fe:
 kfree(config);
fail:
 dev_warn(&client->dev, "probe failed = %d\n", ret);
 return ret;
}
