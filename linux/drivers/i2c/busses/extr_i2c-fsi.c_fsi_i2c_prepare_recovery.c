
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_adapter {struct fsi_i2c_port* algo_data; } ;
struct fsi_i2c_port {struct fsi_i2c_master* master; } ;
struct fsi_i2c_master {int fsi; } ;


 int I2C_FSI_MODE ;
 int I2C_MODE_DIAG ;
 int fsi_i2c_read_reg (int ,int ,int *) ;
 int fsi_i2c_write_reg (int ,int ,int *) ;

__attribute__((used)) static void fsi_i2c_prepare_recovery(struct i2c_adapter *adap)
{
 int rc;
 u32 mode;
 struct fsi_i2c_port *port = adap->algo_data;
 struct fsi_i2c_master *i2c = port->master;

 rc = fsi_i2c_read_reg(i2c->fsi, I2C_FSI_MODE, &mode);
 if (rc)
  return;

 mode |= I2C_MODE_DIAG;
 fsi_i2c_write_reg(i2c->fsi, I2C_FSI_MODE, &mode);
}
