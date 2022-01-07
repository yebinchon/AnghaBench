
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_request {long* cmd; int cmd_len; } ;
struct request_queue {int dummy; } ;
struct request {int dummy; } ;


 long GPCMD_READ_10 ;
 long GPCMD_WRITE_10 ;
 scalar_t__ READ ;
 scalar_t__ blk_rq_pos (struct request*) ;
 int blk_rq_sectors (struct request*) ;
 int queue_logical_block_size (struct request_queue*) ;
 scalar_t__ rq_data_dir (struct request*) ;
 struct scsi_request* scsi_req (struct request*) ;

__attribute__((used)) static bool ide_cdrom_prep_fs(struct request_queue *q, struct request *rq)
{
 int hard_sect = queue_logical_block_size(q);
 long block = (long)blk_rq_pos(rq) / (hard_sect >> 9);
 unsigned long blocks = blk_rq_sectors(rq) / (hard_sect >> 9);
 struct scsi_request *req = scsi_req(rq);

 if (rq_data_dir(rq) == READ)
  req->cmd[0] = GPCMD_READ_10;
 else
  req->cmd[0] = GPCMD_WRITE_10;




 req->cmd[2] = (block >> 24) & 0xff;
 req->cmd[3] = (block >> 16) & 0xff;
 req->cmd[4] = (block >> 8) & 0xff;
 req->cmd[5] = block & 0xff;




 req->cmd[7] = (blocks >> 8) & 0xff;
 req->cmd[8] = blocks & 0xff;
 req->cmd_len = 10;
 return 1;
}
