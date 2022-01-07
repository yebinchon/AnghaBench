
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct request {int dummy; } ;
struct ide_atapi_pc {int c; } ;
struct gendisk {int dummy; } ;
struct TYPE_5__ {scalar_t__ media; int queue; } ;
typedef TYPE_1__ ide_drive_t ;
struct TYPE_7__ {struct ide_atapi_pc* special; int type; } ;
struct TYPE_6__ {scalar_t__ result; int * cmd; } ;


 int ATA_PRIV_MISC ;
 int EIO ;
 int GFP_NOIO ;
 int REQ_IDETAPE_PC1 ;
 int REQ_OP_DRV_IN ;
 int blk_execute_rq (int ,struct gendisk*,struct request*,int ) ;
 struct request* blk_get_request (int ,int ,int ) ;
 int blk_put_request (struct request*) ;
 int blk_rq_map_kern (int ,struct request*,void*,unsigned int,int ) ;
 TYPE_3__* ide_req (struct request*) ;
 scalar_t__ ide_tape ;
 int memcpy (int *,int ,int) ;
 TYPE_2__* scsi_req (struct request*) ;

int ide_queue_pc_tail(ide_drive_t *drive, struct gendisk *disk,
        struct ide_atapi_pc *pc, void *buf, unsigned int bufflen)
{
 struct request *rq;
 int error;

 rq = blk_get_request(drive->queue, REQ_OP_DRV_IN, 0);
 ide_req(rq)->type = ATA_PRIV_MISC;
 ide_req(rq)->special = pc;

 if (buf && bufflen) {
  error = blk_rq_map_kern(drive->queue, rq, buf, bufflen,
     GFP_NOIO);
  if (error)
   goto put_req;
 }

 memcpy(scsi_req(rq)->cmd, pc->c, 12);
 if (drive->media == ide_tape)
  scsi_req(rq)->cmd[13] = REQ_IDETAPE_PC1;
 blk_execute_rq(drive->queue, disk, rq, 0);
 error = scsi_req(rq)->result ? -EIO : 0;
put_req:
 blk_put_request(rq);
 return error;
}
