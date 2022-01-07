
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct request {int dummy; } ;
struct ide_cmd {int tf_flags; struct request* rq; } ;
struct TYPE_5__ {int queue; } ;
typedef TYPE_1__ ide_drive_t ;
struct TYPE_7__ {struct ide_cmd* special; int type; } ;
struct TYPE_6__ {scalar_t__ result; } ;


 int ATA_PRIV_TASKFILE ;
 int EIO ;
 int GFP_NOIO ;
 int IDE_TFLAG_WRITE ;
 int REQ_OP_DRV_IN ;
 int REQ_OP_DRV_OUT ;
 int SECTOR_SIZE ;
 int blk_execute_rq (int ,int *,struct request*,int ) ;
 struct request* blk_get_request (int ,int ,int ) ;
 int blk_put_request (struct request*) ;
 int blk_rq_map_kern (int ,struct request*,int *,int,int ) ;
 TYPE_3__* ide_req (struct request*) ;
 TYPE_2__* scsi_req (struct request*) ;

int ide_raw_taskfile(ide_drive_t *drive, struct ide_cmd *cmd, u8 *buf,
       u16 nsect)
{
 struct request *rq;
 int error;

 rq = blk_get_request(drive->queue,
  (cmd->tf_flags & IDE_TFLAG_WRITE) ?
   REQ_OP_DRV_OUT : REQ_OP_DRV_IN, 0);
 ide_req(rq)->type = ATA_PRIV_TASKFILE;







 if (nsect) {
  error = blk_rq_map_kern(drive->queue, rq, buf,
     nsect * SECTOR_SIZE, GFP_NOIO);
  if (error)
   goto put_req;
 }

 ide_req(rq)->special = cmd;
 cmd->rq = rq;

 blk_execute_rq(drive->queue, ((void*)0), rq, 0);
 error = scsi_req(rq)->result ? -EIO : 0;
put_req:
 blk_put_request(rq);
 return error;
}
