
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atmel_sha_dev {int flags; int dev; int done_task; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SHA_FLAGS_BUSY ;
 int SHA_FLAGS_CPU ;
 int SHA_FLAGS_DMA_READY ;
 int SHA_FLAGS_OUTPUT_READY ;
 int SHA_IDR ;
 int SHA_IMR ;
 int SHA_ISR ;
 int atmel_sha_read (struct atmel_sha_dev*,int ) ;
 int atmel_sha_write (struct atmel_sha_dev*,int ,int) ;
 int dev_warn (int ,char*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t atmel_sha_irq(int irq, void *dev_id)
{
 struct atmel_sha_dev *sha_dd = dev_id;
 u32 reg;

 reg = atmel_sha_read(sha_dd, SHA_ISR);
 if (reg & atmel_sha_read(sha_dd, SHA_IMR)) {
  atmel_sha_write(sha_dd, SHA_IDR, reg);
  if (SHA_FLAGS_BUSY & sha_dd->flags) {
   sha_dd->flags |= SHA_FLAGS_OUTPUT_READY;
   if (!(SHA_FLAGS_CPU & sha_dd->flags))
    sha_dd->flags |= SHA_FLAGS_DMA_READY;
   tasklet_schedule(&sha_dd->done_task);
  } else {
   dev_warn(sha_dd->dev, "SHA interrupt when no active requests.\n");
  }
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
