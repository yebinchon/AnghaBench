
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxcpld_i2c_priv {int lock; } ;


 int MLXCPLD_LPCI2C_CTRL_REG ;
 int MLXCPLD_LPCI2C_RST_SEL_MASK ;
 int mlxcpld_i2c_read_comm (struct mlxcpld_i2c_priv*,int ,int *,int) ;
 int mlxcpld_i2c_write_comm (struct mlxcpld_i2c_priv*,int ,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mlxcpld_i2c_reset(struct mlxcpld_i2c_priv *priv)
{
 u8 val;

 mutex_lock(&priv->lock);

 mlxcpld_i2c_read_comm(priv, MLXCPLD_LPCI2C_CTRL_REG, &val, 1);
 val &= ~MLXCPLD_LPCI2C_RST_SEL_MASK;
 mlxcpld_i2c_write_comm(priv, MLXCPLD_LPCI2C_CTRL_REG, &val, 1);

 mutex_unlock(&priv->lock);
}
