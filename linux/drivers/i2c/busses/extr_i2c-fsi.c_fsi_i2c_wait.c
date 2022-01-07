
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i2c_msg {int len; } ;
struct fsi_i2c_port {TYPE_1__* master; } ;
struct TYPE_2__ {int fsi; } ;


 int ETIMEDOUT ;
 int I2C_CMD_SLEEP_MAX_US ;
 int I2C_CMD_SLEEP_MIN_US ;
 int I2C_FSI_STAT ;
 int I2C_STAT_ANY_RESP ;
 int fsi_i2c_handle_status (struct fsi_i2c_port*,struct i2c_msg*,int) ;
 int fsi_i2c_read_reg (int ,int ,int*) ;
 unsigned long jiffies ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static int fsi_i2c_wait(struct fsi_i2c_port *port, struct i2c_msg *msg,
   unsigned long timeout)
{
 u32 status = 0;
 int rc;
 unsigned long start = jiffies;

 do {
  rc = fsi_i2c_read_reg(port->master->fsi, I2C_FSI_STAT,
          &status);
  if (rc)
   return rc;

  if (status & I2C_STAT_ANY_RESP) {
   rc = fsi_i2c_handle_status(port, msg, status);
   if (rc < 0)
    return rc;


   if (rc == msg->len)
    return 0;


   continue;
  }

  usleep_range(I2C_CMD_SLEEP_MIN_US, I2C_CMD_SLEEP_MAX_US);
 } while (time_after(start + timeout, jiffies));

 return -ETIMEDOUT;
}
