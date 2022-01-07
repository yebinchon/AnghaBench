
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pca9541 {struct i2c_client* client; } ;
struct i2c_mux_core {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct pca9541* i2c_mux_priv (struct i2c_mux_core*) ;
 int pca9541_release_bus (struct i2c_client*) ;

__attribute__((used)) static int pca9541_release_chan(struct i2c_mux_core *muxc, u32 chan)
{
 struct pca9541 *data = i2c_mux_priv(muxc);
 struct i2c_client *client = data->client;

 pca9541_release_bus(client);
 return 0;
}
