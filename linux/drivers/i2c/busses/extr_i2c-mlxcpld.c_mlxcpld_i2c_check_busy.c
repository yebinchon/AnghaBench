
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxcpld_i2c_priv {int dummy; } ;


 int EIO ;
 int MLXCPLD_LPCI2C_STATUS_REG ;
 int MLXCPLD_LPCI2C_TRANS_END ;
 int mlxcpld_i2c_read_comm (struct mlxcpld_i2c_priv*,int ,int*,int) ;

__attribute__((used)) static int mlxcpld_i2c_check_busy(struct mlxcpld_i2c_priv *priv)
{
 u8 val;

 mlxcpld_i2c_read_comm(priv, MLXCPLD_LPCI2C_STATUS_REG, &val, 1);

 if (val & MLXCPLD_LPCI2C_TRANS_END)
  return 0;

 return -EIO;
}
