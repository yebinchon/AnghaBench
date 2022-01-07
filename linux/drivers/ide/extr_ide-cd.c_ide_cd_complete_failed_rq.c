
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {int bio; } ;
typedef int ide_drive_t ;
struct TYPE_4__ {struct request* special; } ;
struct TYPE_3__ {int sense_len; int sense; } ;


 int BLK_STS_IOERR ;
 int BUG () ;
 void* bio_data (int ) ;
 int blk_rq_bytes (struct request*) ;
 int cdrom_analyze_sense_data (int *,struct request*) ;
 scalar_t__ ide_end_rq (int *,struct request*,int ,int ) ;
 TYPE_2__* ide_req (struct request*) ;
 int memcpy (int ,void*,int) ;
 TYPE_1__* scsi_req (struct request*) ;

__attribute__((used)) static void ide_cd_complete_failed_rq(ide_drive_t *drive, struct request *rq)
{






 struct request *failed = ide_req(rq)->special;
 void *sense = bio_data(rq->bio);

 if (failed) {




  memcpy(scsi_req(failed)->sense, sense, 18);
  scsi_req(failed)->sense_len = scsi_req(rq)->sense_len;
  cdrom_analyze_sense_data(drive, failed);

  if (ide_end_rq(drive, failed, BLK_STS_IOERR, blk_rq_bytes(failed)))
   BUG();
 } else
  cdrom_analyze_sense_data(drive, ((void*)0));
}
