
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u8 ;
struct request {int dummy; } ;
struct ide_cmd {int dummy; } ;
typedef int ide_startstop_t ;
struct TYPE_12__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_14__ {struct ide_cmd* special; } ;
struct TYPE_13__ {int result; } ;
struct TYPE_11__ {struct request* rq; } ;


 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 int __ide_error (TYPE_2__*,struct request*,int,int) ;
 scalar_t__ ata_pm_request (struct request*) ;
 scalar_t__ ata_taskfile_request (struct request*) ;
 int blk_rq_bytes (struct request*) ;
 scalar_t__ blk_rq_is_passthrough (struct request*) ;
 int ide_complete_cmd (TYPE_2__*,struct ide_cmd*,int,int) ;
 int ide_complete_pm_rq (TYPE_2__*,struct request*) ;
 int ide_complete_rq (TYPE_2__*,int ,int ) ;
 int ide_dump_status (TYPE_2__*,char const*,int) ;
 TYPE_4__* ide_req (struct request*) ;
 int ide_stopped ;
 TYPE_3__* scsi_req (struct request*) ;

ide_startstop_t ide_error(ide_drive_t *drive, const char *msg, u8 stat)
{
 struct request *rq;
 u8 err;

 err = ide_dump_status(drive, msg, stat);

 rq = drive->hwif->rq;
 if (rq == ((void*)0))
  return ide_stopped;


 if (blk_rq_is_passthrough(rq)) {
  if (ata_taskfile_request(rq)) {
   struct ide_cmd *cmd = ide_req(rq)->special;

   if (cmd)
    ide_complete_cmd(drive, cmd, stat, err);
  } else if (ata_pm_request(rq)) {
   scsi_req(rq)->result = 1;
   ide_complete_pm_rq(drive, rq);
   return ide_stopped;
  }
  scsi_req(rq)->result = err;
  ide_complete_rq(drive, err ? BLK_STS_IOERR : BLK_STS_OK, blk_rq_bytes(rq));
  return ide_stopped;
 }

 return __ide_error(drive, rq, stat, err);
}
