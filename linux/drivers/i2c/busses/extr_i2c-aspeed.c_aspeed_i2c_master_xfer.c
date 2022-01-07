
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {int timeout; } ;
struct aspeed_i2c_bus {int msgs_count; scalar_t__ master_state; int master_xfer_result; int lock; scalar_t__ base; scalar_t__ multi_master; TYPE_1__ adap; int cmd_complete; scalar_t__ msgs_index; struct i2c_msg* msgs; scalar_t__ cmd_err; } ;


 int ASPEED_I2CD_BUS_BUSY_STS ;
 scalar_t__ ASPEED_I2C_CMD_REG ;
 scalar_t__ ASPEED_I2C_MASTER_INACTIVE ;
 scalar_t__ ASPEED_I2C_MASTER_PENDING ;
 int ETIMEDOUT ;
 int aspeed_i2c_do_start (struct aspeed_i2c_bus*) ;
 int aspeed_i2c_recover_bus (struct aspeed_i2c_bus*) ;
 struct aspeed_i2c_bus* i2c_get_adapdata (struct i2c_adapter*) ;
 int readl (scalar_t__) ;
 int reinit_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int aspeed_i2c_master_xfer(struct i2c_adapter *adap,
      struct i2c_msg *msgs, int num)
{
 struct aspeed_i2c_bus *bus = i2c_get_adapdata(adap);
 unsigned long time_left, flags;

 spin_lock_irqsave(&bus->lock, flags);
 bus->cmd_err = 0;


 if (!bus->multi_master &&
     (readl(bus->base + ASPEED_I2C_CMD_REG) &
      ASPEED_I2CD_BUS_BUSY_STS)) {
  int ret;

  spin_unlock_irqrestore(&bus->lock, flags);
  ret = aspeed_i2c_recover_bus(bus);
  if (ret)
   return ret;
  spin_lock_irqsave(&bus->lock, flags);
 }

 bus->cmd_err = 0;
 bus->msgs = msgs;
 bus->msgs_index = 0;
 bus->msgs_count = num;

 reinit_completion(&bus->cmd_complete);
 aspeed_i2c_do_start(bus);
 spin_unlock_irqrestore(&bus->lock, flags);

 time_left = wait_for_completion_timeout(&bus->cmd_complete,
      bus->adap.timeout);

 if (time_left == 0) {




  if (bus->multi_master &&
      (readl(bus->base + ASPEED_I2C_CMD_REG) &
       ASPEED_I2CD_BUS_BUSY_STS))
   aspeed_i2c_recover_bus(bus);





  spin_lock_irqsave(&bus->lock, flags);
  if (bus->master_state == ASPEED_I2C_MASTER_PENDING)
   bus->master_state = ASPEED_I2C_MASTER_INACTIVE;
  spin_unlock_irqrestore(&bus->lock, flags);

  return -ETIMEDOUT;
 }

 return bus->master_xfer_result;
}
