
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsi_i2c_port {int adapter; } ;
struct fsi_i2c_master {int fsi; } ;


 int I2C_FSI_RESET_ERR ;
 int I2C_FSI_RESET_I2C ;
 int I2C_FSI_STAT ;
 int I2C_RESET_SLEEP_MAX_US ;
 int I2C_RESET_SLEEP_MIN_US ;
 int I2C_STAT_CMD_COMP ;
 int fsi_i2c_dev_init (struct fsi_i2c_master*) ;
 int fsi_i2c_read_reg (int ,int ,int*) ;
 int fsi_i2c_write_reg (int ,int ,int*) ;
 int i2c_recover_bus (int *) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static int fsi_i2c_reset_bus(struct fsi_i2c_master *i2c,
        struct fsi_i2c_port *port)
{
 int rc;
 u32 stat, dummy = 0;


 i2c_recover_bus(&port->adapter);


 rc = fsi_i2c_write_reg(i2c->fsi, I2C_FSI_RESET_ERR, &dummy);
 if (rc)
  return rc;


 usleep_range(I2C_RESET_SLEEP_MIN_US, I2C_RESET_SLEEP_MAX_US);

 rc = fsi_i2c_read_reg(i2c->fsi, I2C_FSI_STAT, &stat);
 if (rc)
  return rc;

 if (stat & I2C_STAT_CMD_COMP)
  return 0;


 rc = fsi_i2c_write_reg(i2c->fsi, I2C_FSI_RESET_I2C, &dummy);
 if (rc)
  return rc;


 return fsi_i2c_dev_init(i2c);
}
