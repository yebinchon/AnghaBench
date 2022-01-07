
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct request {int dummy; } ;
struct ide_atapi_pc {int c; } ;
struct TYPE_10__ {scalar_t__ media; TYPE_1__* hwif; int atapi_flags; struct ide_atapi_pc request_sense_pc; struct request* sense_rq; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_11__ {int cmd; } ;
struct TYPE_9__ {struct request* rq; } ;


 int BLK_STS_IOERR ;
 int IDE_AFLAG_IGNORE_DSC ;
 int blk_rq_bytes (struct request*) ;
 int ide_complete_rq (TYPE_2__*,int ,int ) ;
 int ide_init_pc (struct ide_atapi_pc*) ;
 scalar_t__ ide_queue_sense_rq (TYPE_2__*,struct ide_atapi_pc*) ;
 int ide_read_error (TYPE_2__*) ;
 int ide_requeue_and_plug (TYPE_2__*,struct request*) ;
 scalar_t__ ide_tape ;
 int memcpy (int ,int ,int) ;
 TYPE_3__* scsi_req (struct request*) ;

void ide_retry_pc(ide_drive_t *drive)
{
 struct request *failed_rq = drive->hwif->rq;
 struct request *sense_rq = drive->sense_rq;
 struct ide_atapi_pc *pc = &drive->request_sense_pc;

 (void)ide_read_error(drive);


 ide_init_pc(pc);
 memcpy(pc->c, scsi_req(sense_rq)->cmd, 12);

 if (drive->media == ide_tape)
  drive->atapi_flags |= IDE_AFLAG_IGNORE_DSC;






 drive->hwif->rq = ((void*)0);
 ide_requeue_and_plug(drive, failed_rq);
 if (ide_queue_sense_rq(drive, pc))
  ide_complete_rq(drive, BLK_STS_IOERR, blk_rq_bytes(failed_rq));
}
