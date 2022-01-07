
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct ide_tp_ops {int (* tf_read ) (TYPE_4__*,int *,int ) ;int (* write_devctl ) (TYPE_3__*,int) ;} ;
struct TYPE_10__ {int hob; int tf; } ;
struct TYPE_11__ {TYPE_1__ in; } ;
struct ide_cmd {int tf_flags; TYPE_2__ valid; int hob; int tf; } ;
struct TYPE_12__ {struct ide_tp_ops* tp_ops; } ;
typedef TYPE_3__ ide_hwif_t ;
struct TYPE_13__ {TYPE_3__* hwif; } ;
typedef TYPE_4__ ide_drive_t ;


 int ATA_DEVCTL_OBS ;
 int ATA_HOB ;
 int IDE_TFLAG_LBA48 ;
 int stub1 (TYPE_3__*,int) ;
 int stub2 (TYPE_4__*,int *,int ) ;
 int stub3 (TYPE_3__*,int) ;
 int stub4 (TYPE_4__*,int *,int ) ;

void ide_tf_readback(ide_drive_t *drive, struct ide_cmd *cmd)
{
 ide_hwif_t *hwif = drive->hwif;
 const struct ide_tp_ops *tp_ops = hwif->tp_ops;


 tp_ops->write_devctl(hwif, ATA_DEVCTL_OBS);

 tp_ops->tf_read(drive, &cmd->tf, cmd->valid.in.tf);

 if (cmd->tf_flags & IDE_TFLAG_LBA48) {
  tp_ops->write_devctl(hwif, ATA_HOB | ATA_DEVCTL_OBS);

  tp_ops->tf_read(drive, &cmd->hob, cmd->valid.in.hob);
 }
}
