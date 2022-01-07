
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct request {scalar_t__ rq_disk; } ;
struct TYPE_5__ {scalar_t__ media; int * failed_pc; } ;
typedef TYPE_1__ ide_drive_t ;
struct TYPE_6__ {int result; } ;


 int BLK_STS_IOERR ;
 int EIO ;
 int IDE_DRV_ERROR_GENERAL ;
 scalar_t__ ata_misc_request (struct request*) ;
 int blk_rq_bytes (struct request*) ;
 scalar_t__ blk_rq_is_passthrough (struct request*) ;
 int ide_complete_rq (TYPE_1__*,int ,int ) ;
 scalar_t__ ide_floppy ;
 scalar_t__ ide_tape ;
 TYPE_2__* scsi_req (struct request*) ;

void ide_kill_rq(ide_drive_t *drive, struct request *rq)
{
 u8 drv_req = ata_misc_request(rq) && rq->rq_disk;
 u8 media = drive->media;

 drive->failed_pc = ((void*)0);

 if ((media == ide_floppy || media == ide_tape) && drv_req) {
  scsi_req(rq)->result = 0;
 } else {
  if (media == ide_tape)
   scsi_req(rq)->result = IDE_DRV_ERROR_GENERAL;
  else if (blk_rq_is_passthrough(rq) && scsi_req(rq)->result == 0)
   scsi_req(rq)->result = -EIO;
 }

 ide_complete_rq(drive, BLK_STS_IOERR, blk_rq_bytes(rq));
}
