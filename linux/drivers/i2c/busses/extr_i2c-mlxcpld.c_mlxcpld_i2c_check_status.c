
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxcpld_i2c_priv {int dummy; } ;


 int EIO ;
 int MLXCPLD_LPCI2C_ACK_IND ;
 int MLXCPLD_LPCI2C_NACK_IND ;
 int MLXCPLD_LPCI2C_NO_IND ;
 int MLXCPLD_LPCI2C_STATUS_NACK ;
 int MLXCPLD_LPCI2C_STATUS_REG ;
 int MLXCPLD_LPCI2C_TRANS_END ;
 int mlxcpld_i2c_read_comm (struct mlxcpld_i2c_priv*,int ,int*,int) ;

__attribute__((used)) static int mlxcpld_i2c_check_status(struct mlxcpld_i2c_priv *priv, int *status)
{
 u8 val;

 mlxcpld_i2c_read_comm(priv, MLXCPLD_LPCI2C_STATUS_REG, &val, 1);

 if (val & MLXCPLD_LPCI2C_TRANS_END) {
  if (val & MLXCPLD_LPCI2C_STATUS_NACK)





   *status = MLXCPLD_LPCI2C_NACK_IND;
  else
   *status = MLXCPLD_LPCI2C_ACK_IND;
  return 0;
 }
 *status = MLXCPLD_LPCI2C_NO_IND;

 return -EIO;
}
