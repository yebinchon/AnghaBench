
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct request {int dummy; } ;
struct TYPE_5__ {int queue; } ;
typedef TYPE_1__ ide_drive_t ;
struct TYPE_7__ {int type; } ;
struct TYPE_6__ {int cmd_len; int result; int * cmd; } ;


 int ATA_PRIV_MISC ;
 int REQ_DRIVE_RESET ;
 int REQ_OP_DRV_IN ;
 int blk_execute_rq (int ,int *,struct request*,int) ;
 struct request* blk_get_request (int ,int ,int ) ;
 int blk_put_request (struct request*) ;
 TYPE_3__* ide_req (struct request*) ;
 TYPE_2__* scsi_req (struct request*) ;

__attribute__((used)) static int generic_drive_reset(ide_drive_t *drive)
{
 struct request *rq;
 int ret = 0;

 rq = blk_get_request(drive->queue, REQ_OP_DRV_IN, 0);
 ide_req(rq)->type = ATA_PRIV_MISC;
 scsi_req(rq)->cmd_len = 1;
 scsi_req(rq)->cmd[0] = REQ_DRIVE_RESET;
 blk_execute_rq(drive->queue, ((void*)0), rq, 1);
 ret = scsi_req(rq)->result;
 blk_put_request(rq);
 return ret;
}
