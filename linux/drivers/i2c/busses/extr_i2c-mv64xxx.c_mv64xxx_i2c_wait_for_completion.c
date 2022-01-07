
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; int timeout; } ;
struct mv64xxx_i2c_data {long rc; int aborting; int lock; scalar_t__ block; TYPE_1__ adapter; int state; int waitq; } ;


 long ETIMEDOUT ;
 int MV64XXX_I2C_STATE_IDLE ;
 int dev_err (int *,char*,scalar_t__,int) ;
 int mv64xxx_i2c_hw_init (struct mv64xxx_i2c_data*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 long wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static void
mv64xxx_i2c_wait_for_completion(struct mv64xxx_i2c_data *drv_data)
{
 long time_left;
 unsigned long flags;
 char abort = 0;

 time_left = wait_event_timeout(drv_data->waitq,
  !drv_data->block, drv_data->adapter.timeout);

 spin_lock_irqsave(&drv_data->lock, flags);
 if (!time_left) {
  drv_data->rc = -ETIMEDOUT;
  abort = 1;
 } else if (time_left < 0) {
  drv_data->rc = time_left;
  abort = 1;
 }

 if (abort && drv_data->block) {
  drv_data->aborting = 1;
  spin_unlock_irqrestore(&drv_data->lock, flags);

  time_left = wait_event_timeout(drv_data->waitq,
   !drv_data->block, drv_data->adapter.timeout);

  if ((time_left <= 0) && drv_data->block) {
   drv_data->state = MV64XXX_I2C_STATE_IDLE;
   dev_err(&drv_data->adapter.dev,
    "mv64xxx: I2C bus locked, block: %d, "
    "time_left: %d\n", drv_data->block,
    (int)time_left);
   mv64xxx_i2c_hw_init(drv_data);
  }
 } else
  spin_unlock_irqrestore(&drv_data->lock, flags);
}
