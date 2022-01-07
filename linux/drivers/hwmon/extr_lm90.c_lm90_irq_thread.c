
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ lm90_is_tripped (struct i2c_client*,int *) ;

__attribute__((used)) static irqreturn_t lm90_irq_thread(int irq, void *dev_id)
{
 struct i2c_client *client = dev_id;
 u16 status;

 if (lm90_is_tripped(client, &status))
  return IRQ_HANDLED;
 else
  return IRQ_NONE;
}
