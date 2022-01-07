
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int msg_num; int cmd; scalar_t__ addr_width; scalar_t__ data_len; struct i2c_msg* msg; } ;
struct mlxcpld_i2c_priv {TYPE_1__ xfer; } ;
struct i2c_msg {int flags; scalar_t__ len; } ;


 int I2C_M_RD ;

__attribute__((used)) static void mlxcpld_i2c_set_transf_data(struct mlxcpld_i2c_priv *priv,
     struct i2c_msg *msgs, int num,
     u8 comm_len)
{
 priv->xfer.msg = msgs;
 priv->xfer.msg_num = num;







 priv->xfer.cmd = msgs[num - 1].flags & I2C_M_RD;

 if (priv->xfer.cmd == I2C_M_RD && comm_len != msgs[0].len) {
  priv->xfer.addr_width = msgs[0].len;
  priv->xfer.data_len = comm_len - priv->xfer.addr_width;
 } else {
  priv->xfer.addr_width = 0;
  priv->xfer.data_len = comm_len;
 }
}
