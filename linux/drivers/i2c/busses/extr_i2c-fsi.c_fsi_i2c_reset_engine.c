
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct fsi_i2c_master {int fsi; } ;


 int FIELD_PREP (int ,scalar_t__) ;
 int I2C_FSI_MODE ;
 int I2C_FSI_PORT_BUSY ;
 int I2C_FSI_RESET_I2C ;
 int I2C_MODE_PORT ;
 int I2C_PORT_BUSY_RESET ;
 int fsi_i2c_dev_init (struct fsi_i2c_master*) ;
 int fsi_i2c_read_reg (int ,int ,int *) ;
 int fsi_i2c_write_reg (int ,int ,int *) ;

__attribute__((used)) static int fsi_i2c_reset_engine(struct fsi_i2c_master *i2c, u16 port)
{
 int rc;
 u32 mode, dummy = 0;


 rc = fsi_i2c_write_reg(i2c->fsi, I2C_FSI_RESET_I2C, &dummy);
 if (rc)
  return rc;


 rc = fsi_i2c_dev_init(i2c);
 if (rc)
  return rc;

 rc = fsi_i2c_read_reg(i2c->fsi, I2C_FSI_MODE, &mode);
 if (rc)
  return rc;


 if (port) {
  mode &= ~I2C_MODE_PORT;
  mode |= FIELD_PREP(I2C_MODE_PORT, port);
  rc = fsi_i2c_write_reg(i2c->fsi, I2C_FSI_MODE, &mode);
  if (rc)
   return rc;
 }


 dummy = I2C_PORT_BUSY_RESET;
 rc = fsi_i2c_write_reg(i2c->fsi, I2C_FSI_PORT_BUSY, &dummy);
 if (rc)
  return rc;

 return 0;
}
