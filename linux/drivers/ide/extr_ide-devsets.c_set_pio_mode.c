
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct ide_port_ops {int (* set_pio_mode ) (TYPE_1__*,TYPE_2__*) ;} ;
struct TYPE_11__ {int host_flags; int lock; struct ide_port_ops* port_ops; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_12__ {int dev_flags; scalar_t__ pio_mode; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int EINVAL ;
 int ENOSYS ;
 int IDE_DFLAG_USING_DMA ;
 int IDE_HFLAG_NO_SET_MODE ;
 int IDE_HFLAG_SET_PIO_MODE_KEEP_DMA ;
 scalar_t__ XFER_PIO_0 ;
 int ide_dma_on (TYPE_2__*) ;
 int ide_set_pio (TYPE_2__*,int) ;
 scalar_t__ set_pio_mode_abuse (TYPE_1__*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_1__*,TYPE_2__*) ;
 int stub2 (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int set_pio_mode(ide_drive_t *drive, int arg)
{
 ide_hwif_t *hwif = drive->hwif;
 const struct ide_port_ops *port_ops = hwif->port_ops;

 if (arg < 0 || arg > 255)
  return -EINVAL;

 if (port_ops == ((void*)0) || port_ops->set_pio_mode == ((void*)0) ||
     (hwif->host_flags & IDE_HFLAG_NO_SET_MODE))
  return -ENOSYS;

 if (set_pio_mode_abuse(drive->hwif, arg)) {
  drive->pio_mode = arg + XFER_PIO_0;

  if (arg == 8 || arg == 9) {
   unsigned long flags;


   spin_lock_irqsave(&hwif->lock, flags);
   port_ops->set_pio_mode(hwif, drive);
   spin_unlock_irqrestore(&hwif->lock, flags);
  } else
   port_ops->set_pio_mode(hwif, drive);
 } else {
  int keep_dma = !!(drive->dev_flags & IDE_DFLAG_USING_DMA);

  ide_set_pio(drive, arg);

  if (hwif->host_flags & IDE_HFLAG_SET_PIO_MODE_KEEP_DMA) {
   if (keep_dma)
    ide_dma_on(drive);
  }
 }

 return 0;
}
