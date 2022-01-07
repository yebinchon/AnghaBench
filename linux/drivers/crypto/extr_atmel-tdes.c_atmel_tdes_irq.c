
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atmel_tdes_dev {int flags; int dev; int done_task; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int TDES_FLAGS_BUSY ;
 int TDES_IDR ;
 int TDES_IMR ;
 int TDES_ISR ;
 int atmel_tdes_read (struct atmel_tdes_dev*,int ) ;
 int atmel_tdes_write (struct atmel_tdes_dev*,int ,int) ;
 int dev_warn (int ,char*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t atmel_tdes_irq(int irq, void *dev_id)
{
 struct atmel_tdes_dev *tdes_dd = dev_id;
 u32 reg;

 reg = atmel_tdes_read(tdes_dd, TDES_ISR);
 if (reg & atmel_tdes_read(tdes_dd, TDES_IMR)) {
  atmel_tdes_write(tdes_dd, TDES_IDR, reg);
  if (TDES_FLAGS_BUSY & tdes_dd->flags)
   tasklet_schedule(&tdes_dd->done_task);
  else
   dev_warn(tdes_dd->dev, "TDES interrupt when no active requests.\n");
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
