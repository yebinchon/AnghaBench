
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int command; } ;
struct ide_cmd {scalar_t__ protocol; TYPE_2__ tf; } ;
struct TYPE_10__ {int lock; TYPE_1__* tp_ops; } ;
typedef TYPE_3__ ide_hwif_t ;
typedef int ide_handler_t ;
struct TYPE_11__ {int atapi_flags; TYPE_3__* hwif; } ;
typedef TYPE_4__ ide_drive_t ;
struct TYPE_8__ {int (* exec_command ) (TYPE_3__*,int ) ;} ;


 scalar_t__ ATAPI_PROT_DMA ;
 scalar_t__ ATAPI_PROT_PIO ;
 int IDE_AFLAG_DRQ_INTERRUPT ;
 int __ide_set_handler (TYPE_4__*,int *,unsigned int) ;
 int ndelay (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_3__*,int ) ;

void ide_execute_command(ide_drive_t *drive, struct ide_cmd *cmd,
    ide_handler_t *handler, unsigned timeout)
{
 ide_hwif_t *hwif = drive->hwif;
 unsigned long flags;

 spin_lock_irqsave(&hwif->lock, flags);
 if ((cmd->protocol != ATAPI_PROT_DMA &&
      cmd->protocol != ATAPI_PROT_PIO) ||
     (drive->atapi_flags & IDE_AFLAG_DRQ_INTERRUPT))
  __ide_set_handler(drive, handler, timeout);
 hwif->tp_ops->exec_command(hwif, cmd->tf.command);






 ndelay(400);
 spin_unlock_irqrestore(&hwif->lock, flags);
}
