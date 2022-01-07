
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pca954x {int irq; TYPE_1__* chip; int client; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int nchans; } ;


 int BIT (scalar_t__) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ PCA954X_IRQ_OFFSET ;
 int handle_nested_irq (unsigned int) ;
 int i2c_smbus_read_byte (int ) ;
 unsigned int irq_linear_revmap (int ,int) ;

__attribute__((used)) static irqreturn_t pca954x_irq_handler(int irq, void *dev_id)
{
 struct pca954x *data = dev_id;
 unsigned int child_irq;
 int ret, i, handled = 0;

 ret = i2c_smbus_read_byte(data->client);
 if (ret < 0)
  return IRQ_NONE;

 for (i = 0; i < data->chip->nchans; i++) {
  if (ret & BIT(PCA954X_IRQ_OFFSET + i)) {
   child_irq = irq_linear_revmap(data->irq, i);
   handle_nested_irq(child_irq);
   handled++;
  }
 }
 return handled ? IRQ_HANDLED : IRQ_NONE;
}
