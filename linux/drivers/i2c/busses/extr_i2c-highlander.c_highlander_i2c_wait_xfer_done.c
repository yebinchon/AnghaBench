
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct highlander_i2c_dev {int cmd_complete; scalar_t__ irq; } ;


 int highlander_i2c_poll (struct highlander_i2c_dev*) ;
 int highlander_i2c_wait_for_ack (struct highlander_i2c_dev*) ;
 int iic_timeout ;
 int msecs_to_jiffies (int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static inline int highlander_i2c_wait_xfer_done(struct highlander_i2c_dev *dev)
{
 if (dev->irq)
  wait_for_completion_timeout(&dev->cmd_complete,
       msecs_to_jiffies(iic_timeout));
 else

  highlander_i2c_poll(dev);

 return highlander_i2c_wait_for_ack(dev);
}
