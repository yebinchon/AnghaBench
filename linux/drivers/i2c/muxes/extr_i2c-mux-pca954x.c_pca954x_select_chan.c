
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pca954x {int last_chan; struct chip_desc* chip; struct i2c_client* client; } ;
struct i2c_mux_core {int parent; } ;
struct i2c_client {int dummy; } ;
struct chip_desc {scalar_t__ muxtype; int enable; } ;


 struct pca954x* i2c_mux_priv (struct i2c_mux_core*) ;
 scalar_t__ pca954x_ismux ;
 int pca954x_reg_write (int ,struct i2c_client*,int) ;

__attribute__((used)) static int pca954x_select_chan(struct i2c_mux_core *muxc, u32 chan)
{
 struct pca954x *data = i2c_mux_priv(muxc);
 struct i2c_client *client = data->client;
 const struct chip_desc *chip = data->chip;
 u8 regval;
 int ret = 0;


 if (chip->muxtype == pca954x_ismux)
  regval = chan | chip->enable;
 else
  regval = 1 << chan;


 if (data->last_chan != regval) {
  ret = pca954x_reg_write(muxc->parent, client, regval);
  data->last_chan = ret < 0 ? 0 : regval;
 }

 return ret;
}
