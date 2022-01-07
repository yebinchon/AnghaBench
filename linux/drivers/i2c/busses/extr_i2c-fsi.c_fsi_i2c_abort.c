
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsi_i2c_port {int port; struct fsi_i2c_master* master; } ;
struct fsi_i2c_master {struct fsi_device* fsi; } ;
struct fsi_device {int dummy; } ;


 int ETIMEDOUT ;
 scalar_t__ I2C_ABORT_TIMEOUT ;
 int I2C_CMD_SLEEP_MAX_US ;
 int I2C_CMD_SLEEP_MIN_US ;
 int I2C_CMD_WITH_STOP ;
 int I2C_FSI_CMD ;
 int I2C_FSI_STAT ;
 int I2C_STAT_CMD_COMP ;
 int I2C_STAT_LOST_ARB ;
 int I2C_STAT_PARITY ;
 int I2C_STAT_SDA_IN ;
 int I2C_STAT_STOP_ERR ;
 int fsi_i2c_read_reg (struct fsi_device*,int ,int*) ;
 int fsi_i2c_reset_bus (struct fsi_i2c_master*,struct fsi_i2c_port*) ;
 int fsi_i2c_reset_engine (struct fsi_i2c_master*,int ) ;
 int fsi_i2c_write_reg (struct fsi_device*,int ,int*) ;
 unsigned long jiffies ;
 scalar_t__ time_after (scalar_t__,unsigned long) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static int fsi_i2c_abort(struct fsi_i2c_port *port, u32 status)
{
 int rc;
 unsigned long start;
 u32 cmd = I2C_CMD_WITH_STOP;
 u32 stat;
 struct fsi_i2c_master *i2c = port->master;
 struct fsi_device *fsi = i2c->fsi;

 rc = fsi_i2c_reset_engine(i2c, port->port);
 if (rc)
  return rc;

 rc = fsi_i2c_read_reg(fsi, I2C_FSI_STAT, &stat);
 if (rc)
  return rc;


 if (!(stat & I2C_STAT_SDA_IN)) {
  rc = fsi_i2c_reset_bus(i2c, port);
  if (rc)
   return rc;
 }


 if (status & (I2C_STAT_PARITY | I2C_STAT_LOST_ARB | I2C_STAT_STOP_ERR))
  return 0;


 rc = fsi_i2c_write_reg(fsi, I2C_FSI_CMD, &cmd);
 if (rc)
  return rc;


 start = jiffies;

 do {
  rc = fsi_i2c_read_reg(fsi, I2C_FSI_STAT, &status);
  if (rc)
   return rc;

  if (status & I2C_STAT_CMD_COMP)
   return 0;

  usleep_range(I2C_CMD_SLEEP_MIN_US, I2C_CMD_SLEEP_MAX_US);
 } while (time_after(start + I2C_ABORT_TIMEOUT, jiffies));

 return -ETIMEDOUT;
}
