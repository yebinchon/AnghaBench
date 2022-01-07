
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int * cmd; } ;
struct ide_cmd {int nleft; struct request* rq; } ;
typedef int ide_drive_t ;
struct TYPE_2__ {scalar_t__* cmd; } ;


 scalar_t__ GPCMD_REQUEST_SENSE ;
 int IDE_DBG_FUNC ;
 int ide_debug_log (int ,char*,int ) ;
 TYPE_1__* scsi_req (struct request*) ;

__attribute__((used)) static void ide_cd_request_sense_fixup(ide_drive_t *drive, struct ide_cmd *cmd)
{
 struct request *rq = cmd->rq;

 ide_debug_log(IDE_DBG_FUNC, "rq->cmd[0]: 0x%x", rq->cmd[0]);





 if (scsi_req(rq)->cmd[0] == GPCMD_REQUEST_SENSE &&
     cmd->nleft > 0 && cmd->nleft <= 5)
  cmd->nleft = 0;
}
