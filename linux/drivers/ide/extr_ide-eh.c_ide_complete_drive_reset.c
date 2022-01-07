
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct request {int dummy; } ;
struct TYPE_7__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;
typedef scalar_t__ blk_status_t ;
struct TYPE_8__ {scalar_t__* cmd; int result; } ;
struct TYPE_6__ {struct request* rq; } ;


 int EIO ;
 scalar_t__ REQ_DRIVE_RESET ;
 scalar_t__ ata_misc_request (struct request*) ;
 int blk_rq_bytes (struct request*) ;
 int ide_complete_rq (TYPE_2__*,scalar_t__,int ) ;
 TYPE_3__* scsi_req (struct request*) ;

__attribute__((used)) static inline void ide_complete_drive_reset(ide_drive_t *drive, blk_status_t err)
{
 struct request *rq = drive->hwif->rq;

 if (rq && ata_misc_request(rq) &&
     scsi_req(rq)->cmd[0] == REQ_DRIVE_RESET) {
  if (err <= 0 && scsi_req(rq)->result == 0)
   scsi_req(rq)->result = -EIO;
  ide_complete_rq(drive, err, blk_rq_bytes(rq));
 }
}
