
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timeout; } ;
struct em_i2c_device {scalar_t__ base; TYPE_1__ adap; int msg_done; } ;


 int EAGAIN ;
 int ETIMEDOUT ;
 int I2C_BIT_ALD0 ;
 scalar_t__ I2C_OFS_IICSE0 ;
 int readb (scalar_t__) ;
 int reinit_completion (int *) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int em_i2c_wait_for_event(struct em_i2c_device *priv)
{
 unsigned long time_left;
 int status;

 reinit_completion(&priv->msg_done);

 time_left = wait_for_completion_timeout(&priv->msg_done, priv->adap.timeout);

 if (!time_left)
  return -ETIMEDOUT;

 status = readb(priv->base + I2C_OFS_IICSE0);
 return status & I2C_BIT_ALD0 ? -EAGAIN : status;
}
