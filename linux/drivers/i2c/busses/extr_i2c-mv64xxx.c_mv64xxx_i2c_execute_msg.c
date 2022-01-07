
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv64xxx_i2c_data {int send_stop; int block; int rc; int lock; int state; } ;
struct i2c_msg {int dummy; } ;


 int MV64XXX_I2C_STATE_WAITING_FOR_START_COND ;
 int mv64xxx_i2c_send_start (struct mv64xxx_i2c_data*) ;
 int mv64xxx_i2c_wait_for_completion (struct mv64xxx_i2c_data*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
mv64xxx_i2c_execute_msg(struct mv64xxx_i2c_data *drv_data, struct i2c_msg *msg,
    int is_last)
{
 unsigned long flags;

 spin_lock_irqsave(&drv_data->lock, flags);

 drv_data->state = MV64XXX_I2C_STATE_WAITING_FOR_START_COND;

 drv_data->send_stop = is_last;
 drv_data->block = 1;
 mv64xxx_i2c_send_start(drv_data);
 spin_unlock_irqrestore(&drv_data->lock, flags);

 mv64xxx_i2c_wait_for_completion(drv_data);
 return drv_data->rc;
}
