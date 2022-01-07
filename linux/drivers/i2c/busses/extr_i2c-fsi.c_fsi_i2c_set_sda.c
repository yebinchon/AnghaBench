
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_adapter {struct fsi_i2c_port* algo_data; } ;
struct fsi_i2c_port {struct fsi_i2c_master* master; } ;
struct fsi_i2c_master {int fsi; } ;


 int I2C_FSI_RESET_SDA ;
 int I2C_FSI_SET_SDA ;
 int fsi_i2c_write_reg (int ,int ,int *) ;

__attribute__((used)) static void fsi_i2c_set_sda(struct i2c_adapter *adap, int val)
{
 u32 dummy = 0;
 struct fsi_i2c_port *port = adap->algo_data;
 struct fsi_i2c_master *i2c = port->master;

 if (val)
  fsi_i2c_write_reg(i2c->fsi, I2C_FSI_SET_SDA, &dummy);
 else
  fsi_i2c_write_reg(i2c->fsi, I2C_FSI_RESET_SDA, &dummy);
}
