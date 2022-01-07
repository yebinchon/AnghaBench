
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {int dummy; } ;
struct ide_devset {int flags; int (* set ) (TYPE_1__*,int) ;} ;
struct TYPE_6__ {struct request_queue* queue; } ;
typedef TYPE_1__ ide_drive_t ;
struct TYPE_8__ {int (* special ) (TYPE_1__*,int) ;int type; } ;
struct TYPE_7__ {int cmd_len; int result; int * cmd; } ;


 int ATA_PRIV_MISC ;
 int DS_SYNC ;
 int REQ_DEVSET_EXEC ;
 int REQ_OP_DRV_IN ;
 int blk_execute_rq (struct request_queue*,int *,struct request*,int ) ;
 struct request* blk_get_request (struct request_queue*,int ,int ) ;
 int blk_put_request (struct request*) ;
 TYPE_4__* ide_req (struct request*) ;
 TYPE_3__* scsi_req (struct request*) ;
 int stub1 (TYPE_1__*,int) ;

int ide_devset_execute(ide_drive_t *drive, const struct ide_devset *setting,
         int arg)
{
 struct request_queue *q = drive->queue;
 struct request *rq;
 int ret = 0;

 if (!(setting->flags & DS_SYNC))
  return setting->set(drive, arg);

 rq = blk_get_request(q, REQ_OP_DRV_IN, 0);
 ide_req(rq)->type = ATA_PRIV_MISC;
 scsi_req(rq)->cmd_len = 5;
 scsi_req(rq)->cmd[0] = REQ_DEVSET_EXEC;
 *(int *)&scsi_req(rq)->cmd[1] = arg;
 ide_req(rq)->special = setting->set;

 blk_execute_rq(q, ((void*)0), rq, 0);
 ret = scsi_req(rq)->result;
 blk_put_request(rq);

 return ret;
}
