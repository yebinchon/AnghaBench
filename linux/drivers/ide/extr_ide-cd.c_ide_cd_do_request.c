
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct request {int timeout; int * cmd; } ;
struct ide_cmd {struct request* rq; int tf_flags; } ;
typedef scalar_t__ sector_t ;
typedef int ide_startstop_t ;
struct TYPE_10__ {int debug_mask; } ;
typedef TYPE_1__ ide_drive_t ;
typedef int cmd ;
struct TYPE_11__ {int type; } ;


 int ATAPI_WAIT_PC ;



 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 int BUG () ;
 int IDE_DBG_RQ ;
 int IDE_TFLAG_WRITE ;




 int blk_dump_rq_flags (struct request*,char*) ;
 scalar_t__ blk_rq_bytes (struct request*) ;
 int blk_rq_is_passthrough (struct request*) ;
 unsigned int blk_rq_sectors (struct request*) ;
 int cdrom_do_block_pc (TYPE_1__*,struct request*) ;
 int cdrom_start_rw (TYPE_1__*,struct request*) ;
 int ide_complete_rq (TYPE_1__*,int ,unsigned int) ;
 int ide_debug_log (int,char*,int ,unsigned long long) ;
 int ide_init_sg_cmd (struct ide_cmd*,scalar_t__) ;
 int ide_issue_pc (TYPE_1__*,struct ide_cmd*) ;
 int ide_map_sg (TYPE_1__*,struct ide_cmd*) ;
 int ide_prep_sense (TYPE_1__*,struct request*) ;
 TYPE_2__* ide_req (struct request*) ;
 int ide_stopped ;
 int memset (struct ide_cmd*,int ,int) ;
 int req_op (struct request*) ;
 scalar_t__ rq_data_dir (struct request*) ;

__attribute__((used)) static ide_startstop_t ide_cd_do_request(ide_drive_t *drive, struct request *rq,
     sector_t block)
{
 struct ide_cmd cmd;
 int uptodate = 0;
 unsigned int nsectors;

 ide_debug_log(IDE_DBG_RQ, "cmd: 0x%x, block: %llu",
      rq->cmd[0], (unsigned long long)block);

 if (drive->debug_mask & IDE_DBG_RQ)
  blk_dump_rq_flags(rq, "ide_cd_do_request");

 switch (req_op(rq)) {
 default:
  if (cdrom_start_rw(drive, rq) == ide_stopped)
   goto out_end;
  break;
 case 129:
 case 128:
 handle_pc:
  if (!rq->timeout)
   rq->timeout = ATAPI_WAIT_PC;
  cdrom_do_block_pc(drive, rq);
  break;
 case 131:
 case 130:
  switch (ide_req(rq)->type) {
  case 134:

   uptodate = 1;
   goto out_end;
  case 132:
  case 133:
   goto handle_pc;
  default:
   BUG();
  }
 }


 ide_prep_sense(drive, rq);

 memset(&cmd, 0, sizeof(cmd));

 if (rq_data_dir(rq))
  cmd.tf_flags |= IDE_TFLAG_WRITE;

 cmd.rq = rq;

 if (!blk_rq_is_passthrough(rq) || blk_rq_bytes(rq)) {
  ide_init_sg_cmd(&cmd, blk_rq_bytes(rq));
  ide_map_sg(drive, &cmd);
 }

 return ide_issue_pc(drive, &cmd);
out_end:
 nsectors = blk_rq_sectors(rq);

 if (nsectors == 0)
  nsectors = 1;

 ide_complete_rq(drive, uptodate ? BLK_STS_OK : BLK_STS_IOERR, nsectors << 9);

 return ide_stopped;
}
