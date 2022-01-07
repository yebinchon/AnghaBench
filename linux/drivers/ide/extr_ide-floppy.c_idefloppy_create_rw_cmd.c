
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request {int dummy; } ;
struct ide_disk_obj {unsigned long bs_factor; } ;
struct ide_atapi_pc {int flags; struct request* rq; int * c; } ;
struct TYPE_4__ {struct ide_disk_obj* driver_data; } ;
typedef TYPE_1__ ide_drive_t ;
struct TYPE_5__ {int cmd; } ;


 int GPCMD_READ_10 ;
 int GPCMD_WRITE_10 ;
 int IDE_DBG_FUNC ;
 int PC_FLAG_DMA_OK ;
 int PC_FLAG_WRITING ;
 int READ ;
 int WRITE ;
 int blk_rq_sectors (struct request*) ;
 int cpu_to_be16 (int) ;
 int cpu_to_be32 (int) ;
 int ide_debug_log (int ,char*,int,int) ;
 int ide_init_pc (struct ide_atapi_pc*) ;
 int memcpy (int ,int *,int) ;
 int put_unaligned (int ,...) ;
 int rq_data_dir (struct request*) ;
 TYPE_2__* scsi_req (struct request*) ;

__attribute__((used)) static void idefloppy_create_rw_cmd(ide_drive_t *drive,
        struct ide_atapi_pc *pc, struct request *rq,
        unsigned long sector)
{
 struct ide_disk_obj *floppy = drive->driver_data;
 int block = sector / floppy->bs_factor;
 int blocks = blk_rq_sectors(rq) / floppy->bs_factor;
 int cmd = rq_data_dir(rq);

 ide_debug_log(IDE_DBG_FUNC, "block: %d, blocks: %d", block, blocks);

 ide_init_pc(pc);
 pc->c[0] = cmd == READ ? GPCMD_READ_10 : GPCMD_WRITE_10;
 put_unaligned(cpu_to_be16(blocks), (unsigned short *)&pc->c[7]);
 put_unaligned(cpu_to_be32(block), (unsigned int *) &pc->c[2]);

 memcpy(scsi_req(rq)->cmd, pc->c, 12);

 pc->rq = rq;
 if (cmd == WRITE)
  pc->flags |= PC_FLAG_WRITING;

 pc->flags |= PC_FLAG_DMA_OK;
}
