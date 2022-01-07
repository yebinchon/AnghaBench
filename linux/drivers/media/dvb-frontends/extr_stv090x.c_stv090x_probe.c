
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct stv090x_state* demodulator_priv; int ops; } ;
struct stv090x_state {int rolloff; int device; int demod_mode; int demod; TYPE_2__ frontend; int i2c; struct stv090x_config* config; int * verbose; } ;
struct stv090x_config {int get_dvb_frontend; int device; int demod_mode; int demod; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_3__ {struct stv090x_config* platform_data; } ;
struct i2c_client {int adapter; TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int STV090x_RO_35 ;
 int i2c_set_clientdata (struct i2c_client*,struct stv090x_state*) ;
 int kfree (struct stv090x_state*) ;
 struct stv090x_state* kzalloc (int,int ) ;
 int stv090x_get_dvb_frontend ;
 int stv090x_ops ;
 int stv090x_setup_compound (struct stv090x_state*) ;
 int verbose ;

__attribute__((used)) static int stv090x_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 int ret = 0;
 struct stv090x_config *config = client->dev.platform_data;

 struct stv090x_state *state = ((void*)0);

 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (!state) {
  ret = -ENOMEM;
  goto error;
 }

 state->verbose = &verbose;
 state->config = config;
 state->i2c = client->adapter;
 state->frontend.ops = stv090x_ops;
 state->frontend.demodulator_priv = state;
 state->demod = config->demod;

 state->demod_mode = config->demod_mode;
 state->device = config->device;

 state->rolloff = STV090x_RO_35;

 ret = stv090x_setup_compound(state);
 if (ret)
  goto error;

 i2c_set_clientdata(client, state);


 config->get_dvb_frontend = stv090x_get_dvb_frontend;

 return 0;

error:
 kfree(state);
 return ret;
}
