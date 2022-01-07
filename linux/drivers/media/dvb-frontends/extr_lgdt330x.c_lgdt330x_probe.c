
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int demod_chip; int get_dvb_frontend; } ;
struct TYPE_5__ {struct lgdt330x_state* demodulator_priv; TYPE_2__ ops; } ;
struct lgdt330x_state {int current_frequency; int current_modulation; TYPE_2__ config; struct i2c_client* client; TYPE_1__ frontend; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_7__ {int * platform_data; } ;
struct i2c_client {TYPE_3__ dev; } ;
struct dvb_frontend_ops {int dummy; } ;


 int ENODEV ;
 int GFP_KERNEL ;
 int KERN_DEBUG ;


 scalar_t__ debug ;
 int dev_info (TYPE_3__*,char*,char*) ;
 int dev_printk (int ,TYPE_3__*,char*) ;
 scalar_t__ i2c_read_demod_bytes (struct lgdt330x_state*,int,int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct lgdt330x_state*) ;
 int kfree (struct lgdt330x_state*) ;
 struct lgdt330x_state* kzalloc (int,int ) ;
 int lgdt3302_ops ;
 int lgdt3303_ops ;
 int lgdt330x_get_dvb_frontend ;
 int memcpy (TYPE_2__*,int *,int) ;

__attribute__((used)) static int lgdt330x_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct lgdt330x_state *state = ((void*)0);
 u8 buf[1];


 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (!state)
  goto error;


 memcpy(&state->config, client->dev.platform_data,
        sizeof(state->config));
 i2c_set_clientdata(client, state);
 state->client = client;


 switch (state->config.demod_chip) {
 case 129:
  memcpy(&state->frontend.ops, &lgdt3302_ops,
         sizeof(struct dvb_frontend_ops));
  break;
 case 128:
  memcpy(&state->frontend.ops, &lgdt3303_ops,
         sizeof(struct dvb_frontend_ops));
  break;
 default:
  goto error;
 }
 state->frontend.demodulator_priv = state;


 state->config.get_dvb_frontend = lgdt330x_get_dvb_frontend;


 if (i2c_read_demod_bytes(state, 2, buf, 1))
  goto error;

 state->current_frequency = -1;
 state->current_modulation = -1;

 dev_info(&state->client->dev,
  "Demod loaded for LGDT330%s chip\n",
  state->config.demod_chip == 129 ? "2" : "3");

 return 0;

error:
 kfree(state);
 if (debug)
  dev_printk(KERN_DEBUG, &client->dev, "Error loading lgdt330x driver\n");
 return -ENODEV;
}
