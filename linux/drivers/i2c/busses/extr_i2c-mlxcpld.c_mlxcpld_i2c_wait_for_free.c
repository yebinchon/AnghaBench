
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxcpld_i2c_priv {int dummy; } ;


 int ETIMEDOUT ;
 int MLXCPLD_I2C_POLL_TIME ;
 int MLXCPLD_I2C_XFER_TO ;
 int mlxcpld_i2c_check_busy (struct mlxcpld_i2c_priv*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mlxcpld_i2c_wait_for_free(struct mlxcpld_i2c_priv *priv)
{
 int timeout = 0;

 do {
  if (!mlxcpld_i2c_check_busy(priv))
   break;
  usleep_range(MLXCPLD_I2C_POLL_TIME / 2, MLXCPLD_I2C_POLL_TIME);
  timeout += MLXCPLD_I2C_POLL_TIME;
 } while (timeout <= MLXCPLD_I2C_XFER_TO);

 if (timeout > MLXCPLD_I2C_XFER_TO)
  return -ETIMEDOUT;

 return 0;
}
