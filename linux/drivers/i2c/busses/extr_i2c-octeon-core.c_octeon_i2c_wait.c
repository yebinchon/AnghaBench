
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ timeout; } ;
struct octeon_i2c {int broken_irq_mode; int dev; scalar_t__ broken_irq_check; int (* int_disable ) (struct octeon_i2c*) ;TYPE_1__ adap; int queue; int (* int_enable ) (struct octeon_i2c*) ;} ;


 int ETIMEDOUT ;
 int I2C_OCTEON_EVENT_WAIT ;
 int dev_err (int ,char*) ;
 scalar_t__ get_jiffies_64 () ;
 scalar_t__ octeon_i2c_test_iflg (struct octeon_i2c*) ;
 int stub1 (struct octeon_i2c*) ;
 int stub2 (struct octeon_i2c*) ;
 scalar_t__ time_before64 (scalar_t__,scalar_t__) ;
 int usleep_range (int,int) ;
 long wait_event_timeout (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static int octeon_i2c_wait(struct octeon_i2c *i2c)
{
 long time_left;





 if (i2c->broken_irq_mode) {
  u64 end = get_jiffies_64() + i2c->adap.timeout;

  while (!octeon_i2c_test_iflg(i2c) &&
         time_before64(get_jiffies_64(), end))
   usleep_range(I2C_OCTEON_EVENT_WAIT / 2, I2C_OCTEON_EVENT_WAIT);

  return octeon_i2c_test_iflg(i2c) ? 0 : -ETIMEDOUT;
 }

 i2c->int_enable(i2c);
 time_left = wait_event_timeout(i2c->queue, octeon_i2c_test_iflg(i2c),
           i2c->adap.timeout);
 i2c->int_disable(i2c);

 if (i2c->broken_irq_check && !time_left &&
     octeon_i2c_test_iflg(i2c)) {
  dev_err(i2c->dev, "broken irq connection detected, switching to polling mode.\n");
  i2c->broken_irq_mode = 1;
  return 0;
 }

 if (!time_left)
  return -ETIMEDOUT;

 return 0;
}
