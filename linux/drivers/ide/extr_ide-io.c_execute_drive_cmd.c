
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct request {int dummy; } ;
struct ide_cmd {scalar_t__ protocol; } ;
typedef int ide_startstop_t ;
struct TYPE_8__ {int name; } ;
typedef TYPE_1__ ide_drive_t ;
struct TYPE_10__ {struct ide_cmd* special; } ;
struct TYPE_9__ {scalar_t__ result; } ;


 scalar_t__ ATA_PROT_PIO ;
 int BLK_STS_OK ;
 int blk_rq_bytes (struct request*) ;
 int blk_rq_sectors (struct request*) ;
 int do_rw_taskfile (TYPE_1__*,struct ide_cmd*) ;
 int ide_complete_rq (TYPE_1__*,int ,int ) ;
 int ide_init_sg_cmd (struct ide_cmd*,int) ;
 int ide_map_sg (TYPE_1__*,struct ide_cmd*) ;
 TYPE_3__* ide_req (struct request*) ;
 int ide_stopped ;
 int printk (char*,int ) ;
 TYPE_2__* scsi_req (struct request*) ;

__attribute__((used)) static ide_startstop_t execute_drive_cmd (ide_drive_t *drive,
  struct request *rq)
{
 struct ide_cmd *cmd = ide_req(rq)->special;

 if (cmd) {
  if (cmd->protocol == ATA_PROT_PIO) {
   ide_init_sg_cmd(cmd, blk_rq_sectors(rq) << 9);
   ide_map_sg(drive, cmd);
  }

  return do_rw_taskfile(drive, cmd);
 }
 scsi_req(rq)->result = 0;
 ide_complete_rq(drive, BLK_STS_OK, blk_rq_bytes(rq));

  return ide_stopped;
}
