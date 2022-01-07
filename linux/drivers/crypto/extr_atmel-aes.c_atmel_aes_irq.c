
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atmel_aes_dev {int flags; int dev; int done_task; } ;
typedef int irqreturn_t ;


 int AES_FLAGS_BUSY ;
 int AES_IDR ;
 int AES_IMR ;
 int AES_ISR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int atmel_aes_read (struct atmel_aes_dev*,int ) ;
 int atmel_aes_write (struct atmel_aes_dev*,int ,int) ;
 int dev_warn (int ,char*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t atmel_aes_irq(int irq, void *dev_id)
{
 struct atmel_aes_dev *aes_dd = dev_id;
 u32 reg;

 reg = atmel_aes_read(aes_dd, AES_ISR);
 if (reg & atmel_aes_read(aes_dd, AES_IMR)) {
  atmel_aes_write(aes_dd, AES_IDR, reg);
  if (AES_FLAGS_BUSY & aes_dd->flags)
   tasklet_schedule(&aes_dd->done_task);
  else
   dev_warn(aes_dd->dev, "AES interrupt when no active requests.\n");
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
