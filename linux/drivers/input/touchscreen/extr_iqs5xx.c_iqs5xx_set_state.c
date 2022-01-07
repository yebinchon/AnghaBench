
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iqs5xx_private {scalar_t__ bl_status; int lock; } ;
struct i2c_client {int irq; } ;


 scalar_t__ IQS5XX_BL_STATUS_RESET ;
 int IQS5XX_END_COMM ;
 int IQS5XX_SYS_CTRL1 ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 struct iqs5xx_private* i2c_get_clientdata (struct i2c_client*) ;
 int iqs5xx_write_byte (struct i2c_client*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int iqs5xx_set_state(struct i2c_client *client, u8 state)
{
 struct iqs5xx_private *iqs5xx = i2c_get_clientdata(client);
 int error1, error2;

 if (iqs5xx->bl_status == IQS5XX_BL_STATUS_RESET)
  return 0;

 mutex_lock(&iqs5xx->lock);






 disable_irq(client->irq);

 error1 = iqs5xx_write_byte(client, IQS5XX_SYS_CTRL1, state);
 error2 = iqs5xx_write_byte(client, IQS5XX_END_COMM, 0);

 usleep_range(50, 100);
 enable_irq(client->irq);

 mutex_unlock(&iqs5xx->lock);

 if (error1)
  return error1;

 return error2;
}
