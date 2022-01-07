
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int timeout; } ;
struct aspeed_i2c_bus {int lock; scalar_t__ base; scalar_t__ cmd_err; TYPE_1__ adap; int cmd_complete; int dev; } ;


 int ASPEED_I2CD_BUS_RECOVER_CMD ;
 int ASPEED_I2CD_M_STOP_CMD ;
 int ASPEED_I2CD_SCL_LINE_STS ;
 int ASPEED_I2CD_SDA_LINE_STS ;
 scalar_t__ ASPEED_I2C_CMD_REG ;
 int aspeed_i2c_reset (struct aspeed_i2c_bus*) ;
 int dev_dbg (int ,char*,int) ;
 int readl (scalar_t__) ;
 int reinit_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int aspeed_i2c_recover_bus(struct aspeed_i2c_bus *bus)
{
 unsigned long time_left, flags;
 int ret = 0;
 u32 command;

 spin_lock_irqsave(&bus->lock, flags);
 command = readl(bus->base + ASPEED_I2C_CMD_REG);

 if (command & ASPEED_I2CD_SDA_LINE_STS) {

  if (command & ASPEED_I2CD_SCL_LINE_STS)
   goto out;
  dev_dbg(bus->dev, "SCL hung (state %x), attempting recovery\n",
   command);

  reinit_completion(&bus->cmd_complete);
  writel(ASPEED_I2CD_M_STOP_CMD, bus->base + ASPEED_I2C_CMD_REG);
  spin_unlock_irqrestore(&bus->lock, flags);

  time_left = wait_for_completion_timeout(
    &bus->cmd_complete, bus->adap.timeout);

  spin_lock_irqsave(&bus->lock, flags);
  if (time_left == 0)
   goto reset_out;
  else if (bus->cmd_err)
   goto reset_out;

  else if (!(readl(bus->base + ASPEED_I2C_CMD_REG) &
      ASPEED_I2CD_SCL_LINE_STS))
   goto reset_out;

 } else {
  dev_dbg(bus->dev, "SDA hung (state %x), attempting recovery\n",
   command);

  reinit_completion(&bus->cmd_complete);

  writel(ASPEED_I2CD_BUS_RECOVER_CMD,
         bus->base + ASPEED_I2C_CMD_REG);
  spin_unlock_irqrestore(&bus->lock, flags);

  time_left = wait_for_completion_timeout(
    &bus->cmd_complete, bus->adap.timeout);

  spin_lock_irqsave(&bus->lock, flags);
  if (time_left == 0)
   goto reset_out;
  else if (bus->cmd_err)
   goto reset_out;

  else if (!(readl(bus->base + ASPEED_I2C_CMD_REG) &
      ASPEED_I2CD_SDA_LINE_STS))
   goto reset_out;
 }

out:
 spin_unlock_irqrestore(&bus->lock, flags);

 return ret;

reset_out:
 spin_unlock_irqrestore(&bus->lock, flags);

 return aspeed_i2c_reset(bus);
}
