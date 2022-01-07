
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int u8 ;
struct ide_tp_ops {int (* exec_command ) (TYPE_3__*,int ) ;int (* tf_load ) (TYPE_4__*,struct ide_taskfile*,int) ;int (* output_data ) (TYPE_4__*,struct ide_cmd*,int*,int) ;int (* write_devctl ) (TYPE_3__*,int ) ;} ;
struct ide_taskfile {int data; int device; int command; } ;
struct ide_dma_ops {int (* dma_start ) (TYPE_4__*) ;int dma_timer_expiry; } ;
struct TYPE_15__ {int tf; int hob; } ;
struct TYPE_16__ {TYPE_1__ out; } ;
struct ide_cmd {scalar_t__ protocol; int tf_flags; int ftf_flags; TYPE_2__ valid; struct ide_taskfile tf; struct ide_taskfile hob; } ;
typedef int ide_startstop_t ;
struct TYPE_17__ {int expiry; struct ide_dma_ops* dma_ops; struct ide_tp_ops* tp_ops; struct ide_cmd cmd; } ;
typedef TYPE_3__ ide_hwif_t ;
typedef int ide_handler_t ;
struct TYPE_18__ {scalar_t__ mult_count; int select; int name; TYPE_3__* hwif; } ;
typedef TYPE_4__ ide_drive_t ;


 int ATA_DEVCTL_OBS ;



 int IDE_FTFLAG_FLAGGED ;
 int IDE_FTFLAG_OUT_DATA ;
 int IDE_FTFLAG_SET_IN_FLAGS ;
 int IDE_TFLAG_DMA_PIO_FALLBACK ;
 int IDE_TFLAG_LBA48 ;
 int IDE_TFLAG_MULTI_PIO ;
 int IDE_TFLAG_WRITE ;
 int IDE_VALID_DEVICE ;
 int WAIT_CMD ;
 int WAIT_WORSTCASE ;
 int * ide_dma_intr ;
 int ide_dma_prepare (TYPE_4__*,struct ide_cmd*) ;
 int ide_execute_command (TYPE_4__*,struct ide_cmd*,int *,int) ;
 int ide_started ;
 int ide_stopped ;
 int ide_tf_dump (int ,struct ide_cmd*) ;
 int memcpy (struct ide_cmd*,struct ide_cmd*,int) ;
 int ndelay (int) ;
 int pr_err (char*,int ) ;
 int pre_task_out_intr (TYPE_4__*,struct ide_cmd*) ;
 int stub1 (TYPE_3__*,int ) ;
 int stub2 (TYPE_4__*,struct ide_cmd*,int*,int) ;
 int stub3 (TYPE_4__*,struct ide_taskfile*,int) ;
 int stub4 (TYPE_4__*,struct ide_taskfile*,int) ;
 int stub5 (TYPE_3__*,int ) ;
 int stub6 (TYPE_4__*) ;
 int * task_no_data_intr ;
 int * task_pio_intr ;

ide_startstop_t do_rw_taskfile(ide_drive_t *drive, struct ide_cmd *orig_cmd)
{
 ide_hwif_t *hwif = drive->hwif;
 struct ide_cmd *cmd = &hwif->cmd;
 struct ide_taskfile *tf = &cmd->tf;
 ide_handler_t *handler = ((void*)0);
 const struct ide_tp_ops *tp_ops = hwif->tp_ops;
 const struct ide_dma_ops *dma_ops = hwif->dma_ops;

 if (orig_cmd->protocol == 128 &&
     (orig_cmd->tf_flags & IDE_TFLAG_MULTI_PIO) &&
     drive->mult_count == 0) {
  pr_err("%s: multimode not set!\n", drive->name);
  return ide_stopped;
 }

 if (orig_cmd->ftf_flags & IDE_FTFLAG_FLAGGED)
  orig_cmd->ftf_flags |= IDE_FTFLAG_SET_IN_FLAGS;

 memcpy(cmd, orig_cmd, sizeof(*cmd));

 if ((cmd->tf_flags & IDE_TFLAG_DMA_PIO_FALLBACK) == 0) {
  ide_tf_dump(drive->name, cmd);
  tp_ops->write_devctl(hwif, ATA_DEVCTL_OBS);

  if (cmd->ftf_flags & IDE_FTFLAG_OUT_DATA) {
   u8 data[2] = { cmd->tf.data, cmd->hob.data };

   tp_ops->output_data(drive, cmd, data, 2);
  }

  if (cmd->valid.out.tf & IDE_VALID_DEVICE) {
   u8 HIHI = (cmd->tf_flags & IDE_TFLAG_LBA48) ?
      0xE0 : 0xEF;

   if (!(cmd->ftf_flags & IDE_FTFLAG_FLAGGED))
    cmd->tf.device &= HIHI;
   cmd->tf.device |= drive->select;
  }

  tp_ops->tf_load(drive, &cmd->hob, cmd->valid.out.hob);
  tp_ops->tf_load(drive, &cmd->tf, cmd->valid.out.tf);
 }

 switch (cmd->protocol) {
 case 128:
  if (cmd->tf_flags & IDE_TFLAG_WRITE) {
   tp_ops->exec_command(hwif, tf->command);
   ndelay(400);
   return pre_task_out_intr(drive, cmd);
  }
  handler = task_pio_intr;

 case 129:
  if (handler == ((void*)0))
   handler = task_no_data_intr;
  ide_execute_command(drive, cmd, handler, WAIT_WORSTCASE);
  return ide_started;
 case 130:
  if (ide_dma_prepare(drive, cmd))
   return ide_stopped;
  hwif->expiry = dma_ops->dma_timer_expiry;
  ide_execute_command(drive, cmd, ide_dma_intr, 2 * WAIT_CMD);
  dma_ops->dma_start(drive);

 default:
  return ide_started;
 }
}
