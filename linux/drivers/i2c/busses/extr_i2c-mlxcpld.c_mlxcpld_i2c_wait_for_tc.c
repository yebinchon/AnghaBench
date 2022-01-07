
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int addr_width; int data_len; int msg_num; TYPE_1__* msg; int cmd; } ;
struct mlxcpld_i2c_priv {TYPE_2__ xfer; int dev; int smbus_block; } ;
struct TYPE_3__ {int* buf; } ;


 int E2BIG ;
 int EINVAL ;
 int ENXIO ;
 int ETIMEDOUT ;
 int I2C_M_RD ;
 int I2C_SMBUS_BLOCK_MAX ;
 int MLXCPLD_I2C_POLL_TIME ;
 int MLXCPLD_I2C_SMBUS_BLK_BIT ;
 int MLXCPLD_I2C_XFER_TO ;

 int MLXCPLD_LPCI2C_DATA_REG ;


 int MLXCPLD_LPCI2C_NUM_ADDR_REG ;
 int MLXCPLD_LPCI2C_NUM_DAT_REG ;
 int dev_err (int ,char*) ;
 int mlxcpld_i2c_check_status (struct mlxcpld_i2c_priv*,int*) ;
 int mlxcpld_i2c_read_comm (struct mlxcpld_i2c_priv*,int ,int*,int) ;
 int unlikely (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mlxcpld_i2c_wait_for_tc(struct mlxcpld_i2c_priv *priv)
{
 int status, i, timeout = 0;
 u8 datalen, val;

 do {
  usleep_range(MLXCPLD_I2C_POLL_TIME / 2, MLXCPLD_I2C_POLL_TIME);
  if (!mlxcpld_i2c_check_status(priv, &status))
   break;
  timeout += MLXCPLD_I2C_POLL_TIME;
 } while (status == 0 && timeout < MLXCPLD_I2C_XFER_TO);

 switch (status) {
 case 128:
  return -ETIMEDOUT;

 case 130:
  if (priv->xfer.cmd != I2C_M_RD)
   return (priv->xfer.addr_width + priv->xfer.data_len);

  if (priv->xfer.msg_num == 1)
   i = 0;
  else
   i = 1;

  if (!priv->xfer.msg[i].buf)
   return -EINVAL;
  mlxcpld_i2c_read_comm(priv, MLXCPLD_LPCI2C_NUM_ADDR_REG, &val,
          1);
  if (priv->smbus_block && (val & MLXCPLD_I2C_SMBUS_BLK_BIT)) {
   mlxcpld_i2c_read_comm(priv, MLXCPLD_LPCI2C_NUM_DAT_REG,
           &datalen, 1);
   if (unlikely(datalen > (I2C_SMBUS_BLOCK_MAX + 1))) {
    dev_err(priv->dev, "Incorrect smbus block read message len\n");
    return -E2BIG;
   }
  } else {
   datalen = priv->xfer.data_len;
  }

  mlxcpld_i2c_read_comm(priv, MLXCPLD_LPCI2C_DATA_REG,
          priv->xfer.msg[i].buf, datalen);

  return datalen;

 case 129:
  return -ENXIO;

 default:
  return -EINVAL;
 }
}
