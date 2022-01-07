
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxcpld_i2c_priv {int lock; int dev; } ;
struct i2c_msg {scalar_t__ len; } ;
struct i2c_adapter {int dummy; } ;


 int EIO ;
 int dev_err (int ,char*) ;
 struct mlxcpld_i2c_priv* i2c_get_adapdata (struct i2c_adapter*) ;
 scalar_t__ mlxcpld_i2c_check_busy (struct mlxcpld_i2c_priv*) ;
 int mlxcpld_i2c_check_msg_params (struct mlxcpld_i2c_priv*,struct i2c_msg*,int) ;
 int mlxcpld_i2c_reset (struct mlxcpld_i2c_priv*) ;
 int mlxcpld_i2c_set_transf_data (struct mlxcpld_i2c_priv*,struct i2c_msg*,int,int ) ;
 scalar_t__ mlxcpld_i2c_wait_for_free (struct mlxcpld_i2c_priv*) ;
 int mlxcpld_i2c_wait_for_tc (struct mlxcpld_i2c_priv*) ;
 int mlxcpld_i2c_xfer_msg (struct mlxcpld_i2c_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mlxcpld_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
       int num)
{
 struct mlxcpld_i2c_priv *priv = i2c_get_adapdata(adap);
 u8 comm_len = 0;
 int i, err;

 err = mlxcpld_i2c_check_msg_params(priv, msgs, num);
 if (err) {
  dev_err(priv->dev, "Incorrect message\n");
  return err;
 }

 for (i = 0; i < num; ++i)
  comm_len += msgs[i].len;


 if (mlxcpld_i2c_wait_for_free(priv)) {
  dev_err(priv->dev, "LPCI2C bridge is busy\n");
  mlxcpld_i2c_reset(priv);
  if (mlxcpld_i2c_check_busy(priv)) {
   dev_err(priv->dev, "LPCI2C bridge is busy after reset\n");
   return -EIO;
  }
 }

 mlxcpld_i2c_set_transf_data(priv, msgs, num, comm_len);

 mutex_lock(&priv->lock);


 mlxcpld_i2c_xfer_msg(priv);


 err = mlxcpld_i2c_wait_for_tc(priv);

 mutex_unlock(&priv->lock);

 return err < 0 ? err : num;
}
