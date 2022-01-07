
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
struct request {int dummy; } ;
typedef int ide_startstop_t ;
struct TYPE_11__ {TYPE_1__* tp_ops; } ;
typedef TYPE_2__ ide_hwif_t ;
struct TYPE_12__ {int dev_flags; TYPE_2__* hwif; } ;
typedef TYPE_3__ ide_drive_t ;
struct TYPE_13__ {int result; } ;
struct TYPE_10__ {int (* read_status ) (TYPE_2__*) ;int (* exec_command ) (TYPE_2__*,int ) ;} ;


 int ATA_BUSY ;
 int ATA_CMD_IDLEIMMEDIATE ;
 int ATA_DF ;
 int ATA_DRQ ;
 int ERROR_MAX ;
 int ERROR_RESET ;
 int IDE_DFLAG_NOWERR ;
 int ide_do_reset (TYPE_3__*) ;
 int ide_kill_rq (TYPE_3__*,struct request*) ;
 int ide_stopped ;
 TYPE_6__* scsi_req (struct request*) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*,int ) ;

__attribute__((used)) static ide_startstop_t ide_atapi_error(ide_drive_t *drive, struct request *rq,
           u8 stat, u8 err)
{
 ide_hwif_t *hwif = drive->hwif;

 if ((stat & ATA_BUSY) ||
     ((stat & ATA_DF) && (drive->dev_flags & IDE_DFLAG_NOWERR) == 0)) {

  scsi_req(rq)->result |= ERROR_RESET;
 } else {

 }

 if (hwif->tp_ops->read_status(hwif) & (ATA_BUSY | ATA_DRQ))

  hwif->tp_ops->exec_command(hwif, ATA_CMD_IDLEIMMEDIATE);

 if (scsi_req(rq)->result >= ERROR_MAX) {
  ide_kill_rq(drive, rq);
 } else {
  if ((scsi_req(rq)->result & ERROR_RESET) == ERROR_RESET) {
   ++scsi_req(rq)->result;
   return ide_do_reset(drive);
  }
  ++scsi_req(rq)->result;
 }

 return ide_stopped;
}
