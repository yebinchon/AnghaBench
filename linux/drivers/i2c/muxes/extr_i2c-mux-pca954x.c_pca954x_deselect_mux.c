
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pca954x {scalar_t__ last_chan; int idle_state; struct i2c_client* client; } ;
struct i2c_mux_core {int parent; } ;
struct i2c_client {int dummy; } ;
typedef scalar_t__ s8 ;


 scalar_t__ MUX_IDLE_DISCONNECT ;
 scalar_t__ READ_ONCE (int ) ;
 struct pca954x* i2c_mux_priv (struct i2c_mux_core*) ;
 int pca954x_reg_write (int ,struct i2c_client*,scalar_t__) ;
 int pca954x_select_chan (struct i2c_mux_core*,scalar_t__) ;

__attribute__((used)) static int pca954x_deselect_mux(struct i2c_mux_core *muxc, u32 chan)
{
 struct pca954x *data = i2c_mux_priv(muxc);
 struct i2c_client *client = data->client;
 s8 idle_state;

 idle_state = READ_ONCE(data->idle_state);
 if (idle_state >= 0)

  return pca954x_select_chan(muxc, idle_state);

 if (idle_state == MUX_IDLE_DISCONNECT) {

  data->last_chan = 0;
  return pca954x_reg_write(muxc->parent, client,
      data->last_chan);
 }



 return 0;
}
