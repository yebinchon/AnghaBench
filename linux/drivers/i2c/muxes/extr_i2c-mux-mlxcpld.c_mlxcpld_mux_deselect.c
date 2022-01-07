
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxcpld_mux {scalar_t__ last_chan; struct i2c_client* client; } ;
struct i2c_mux_core {int parent; } ;
struct i2c_client {int dummy; } ;


 struct mlxcpld_mux* i2c_mux_priv (struct i2c_mux_core*) ;
 int mlxcpld_mux_reg_write (int ,struct i2c_client*,scalar_t__) ;

__attribute__((used)) static int mlxcpld_mux_deselect(struct i2c_mux_core *muxc, u32 chan)
{
 struct mlxcpld_mux *data = i2c_mux_priv(muxc);
 struct i2c_client *client = data->client;


 data->last_chan = 0;

 return mlxcpld_mux_reg_write(muxc->parent, client, data->last_chan);
}
