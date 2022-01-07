
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * release; } ;
struct TYPE_4__ {int * demodulator_priv; TYPE_1__ ops; } ;
struct lgdt3306a_state {struct lgdt3306a_state* cfg; TYPE_2__ frontend; int muxc; } ;
struct i2c_client {int dummy; } ;


 struct lgdt3306a_state* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_mux_del_adapters (int ) ;
 int kfree (struct lgdt3306a_state*) ;

__attribute__((used)) static int lgdt3306a_remove(struct i2c_client *client)
{
 struct lgdt3306a_state *state = i2c_get_clientdata(client);

 i2c_mux_del_adapters(state->muxc);

 state->frontend.ops.release = ((void*)0);
 state->frontend.demodulator_priv = ((void*)0);

 kfree(state->cfg);
 kfree(state);

 return 0;
}
