
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct request {int dummy; } ;
struct TYPE_3__ {int queue; } ;
typedef TYPE_1__ ide_drive_t ;


 int blk_rq_is_passthrough (struct request*) ;
 scalar_t__ blk_rq_is_scsi (struct request*) ;
 int ide_cdrom_prep_fs (int ,struct request*) ;
 int ide_cdrom_prep_pc (struct request*) ;
 int scsi_req (struct request*) ;
 int scsi_req_init (int ) ;

__attribute__((used)) static bool ide_cdrom_prep_rq(ide_drive_t *drive, struct request *rq)
{
 if (!blk_rq_is_passthrough(rq)) {
  scsi_req_init(scsi_req(rq));

  return ide_cdrom_prep_fs(drive->queue, rq);
 } else if (blk_rq_is_scsi(rq))
  return ide_cdrom_prep_pc(rq);

 return 1;
}
