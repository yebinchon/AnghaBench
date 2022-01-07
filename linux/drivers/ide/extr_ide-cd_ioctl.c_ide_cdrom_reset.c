
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct request {int rq_flags; } ;
struct cdrom_info {int disk; } ;
struct cdrom_device_info {TYPE_1__* handle; } ;
struct TYPE_5__ {int atapi_flags; int queue; struct cdrom_info* driver_data; } ;
typedef TYPE_1__ ide_drive_t ;
struct TYPE_7__ {int type; } ;
struct TYPE_6__ {scalar_t__ result; } ;


 int ATA_PRIV_MISC ;
 int EIO ;
 int IDE_AFLAG_DOOR_LOCKED ;
 int REQ_OP_DRV_IN ;
 int RQF_QUIET ;
 int blk_execute_rq (int ,int ,struct request*,int ) ;
 struct request* blk_get_request (int ,int ,int ) ;
 int blk_put_request (struct request*) ;
 int ide_cd_lockdoor (TYPE_1__*,int) ;
 TYPE_3__* ide_req (struct request*) ;
 TYPE_2__* scsi_req (struct request*) ;

int ide_cdrom_reset(struct cdrom_device_info *cdi)
{
 ide_drive_t *drive = cdi->handle;
 struct cdrom_info *cd = drive->driver_data;
 struct request *rq;
 int ret;

 rq = blk_get_request(drive->queue, REQ_OP_DRV_IN, 0);
 ide_req(rq)->type = ATA_PRIV_MISC;
 rq->rq_flags = RQF_QUIET;
 blk_execute_rq(drive->queue, cd->disk, rq, 0);
 ret = scsi_req(rq)->result ? -EIO : 0;
 blk_put_request(rq);




 if (drive->atapi_flags & IDE_AFLAG_DOOR_LOCKED)
  (void)ide_cd_lockdoor(drive, 1);

 return ret;
}
