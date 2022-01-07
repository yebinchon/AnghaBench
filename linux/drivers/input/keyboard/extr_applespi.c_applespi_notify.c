
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct applespi_data {int read_active; int cmd_msg_lock; TYPE_1__* spi; int rd_m; int suspended; } ;
typedef int acpi_handle ;
struct TYPE_2__ {int dev; } ;


 int ACPI_INTERRUPT_HANDLED ;
 int ET_RD_IRQ ;
 int PT_READ ;
 int applespi_async (struct applespi_data*,int *,int ) ;
 int applespi_async_read_complete ;
 int dev_warn (int *,char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_applespi_irq_received (int ,int ) ;

__attribute__((used)) static u32 applespi_notify(acpi_handle gpe_device, u32 gpe, void *context)
{
 struct applespi_data *applespi = context;
 int sts;
 unsigned long flags;

 trace_applespi_irq_received(ET_RD_IRQ, PT_READ);

 spin_lock_irqsave(&applespi->cmd_msg_lock, flags);

 if (!applespi->suspended) {
  sts = applespi_async(applespi, &applespi->rd_m,
         applespi_async_read_complete);
  if (sts)
   dev_warn(&applespi->spi->dev,
     "Error queueing async read to device: %d\n",
     sts);
  else
   applespi->read_active = 1;
 }

 spin_unlock_irqrestore(&applespi->cmd_msg_lock, flags);

 return ACPI_INTERRUPT_HANDLED;
}
