
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int data_len; int addr_width; int msg_num; int cmd; TYPE_1__* msg; } ;
struct mlxcpld_i2c_priv {TYPE_2__ xfer; scalar_t__ smbus_block; } ;
struct TYPE_3__ {int len; int flags; int* buf; int addr; } ;


 int I2C_M_RD ;
 int I2C_M_RECV_LEN ;
 int MLXCPLD_I2C_SMBUS_BLK_BIT ;
 scalar_t__ MLXCPLD_LPCI2C_CMD_REG ;
 scalar_t__ MLXCPLD_LPCI2C_DATA_REG ;
 scalar_t__ MLXCPLD_LPCI2C_NUM_ADDR_REG ;
 scalar_t__ MLXCPLD_LPCI2C_NUM_DAT_REG ;
 int mlxcpld_i2c_write_comm (struct mlxcpld_i2c_priv*,scalar_t__,int*,int) ;

__attribute__((used)) static void mlxcpld_i2c_xfer_msg(struct mlxcpld_i2c_priv *priv)
{
 int i, len = 0;
 u8 cmd, val;

 mlxcpld_i2c_write_comm(priv, MLXCPLD_LPCI2C_NUM_DAT_REG,
          &priv->xfer.data_len, 1);

 val = priv->xfer.addr_width;

 if (priv->smbus_block && priv->xfer.msg_num >= 2 &&
     priv->xfer.msg[1].len == 1 &&
     (priv->xfer.msg[1].flags & I2C_M_RECV_LEN) &&
     (priv->xfer.msg[1].flags & I2C_M_RD))
  val |= MLXCPLD_I2C_SMBUS_BLK_BIT;

 mlxcpld_i2c_write_comm(priv, MLXCPLD_LPCI2C_NUM_ADDR_REG, &val, 1);

 for (i = 0; i < priv->xfer.msg_num; i++) {
  if ((priv->xfer.msg[i].flags & I2C_M_RD) != I2C_M_RD) {

   mlxcpld_i2c_write_comm(priv, MLXCPLD_LPCI2C_DATA_REG +
            len, priv->xfer.msg[i].buf,
            priv->xfer.msg[i].len);
   len += priv->xfer.msg[i].len;
  }
 }





 cmd = (priv->xfer.msg[0].addr << 1) | priv->xfer.cmd;
 mlxcpld_i2c_write_comm(priv, MLXCPLD_LPCI2C_CMD_REG, &cmd, 1);
}
