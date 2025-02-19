
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u8 ;
struct request {int dummy; } ;
struct ide_atapi_pc {int* c; int flags; } ;
struct TYPE_4__ {int blk_size; scalar_t__ buffer_size; } ;
typedef TYPE_1__ idetape_tape_t ;
struct TYPE_5__ {int cmd; } ;


 int PC_FLAG_DMA_OK ;
 int PC_FLAG_WRITING ;
 void* READ_6 ;
 void* WRITE_6 ;
 scalar_t__ blk_rq_bytes (struct request*) ;
 int blk_rq_sectors (struct request*) ;
 int cpu_to_be32 (unsigned int) ;
 int ide_init_pc (struct ide_atapi_pc*) ;
 int memcpy (int ,int*,int) ;
 int put_unaligned (int ,unsigned int*) ;
 TYPE_2__* scsi_req (struct request*) ;

__attribute__((used)) static void ide_tape_create_rw_cmd(idetape_tape_t *tape,
       struct ide_atapi_pc *pc, struct request *rq,
       u8 opcode)
{
 unsigned int length = blk_rq_sectors(rq) / (tape->blk_size >> 9);

 ide_init_pc(pc);
 put_unaligned(cpu_to_be32(length), (unsigned int *) &pc->c[1]);
 pc->c[1] = 1;

 if (blk_rq_bytes(rq) == tape->buffer_size)
  pc->flags |= PC_FLAG_DMA_OK;

 if (opcode == READ_6)
  pc->c[0] = READ_6;
 else if (opcode == WRITE_6) {
  pc->c[0] = WRITE_6;
  pc->flags |= PC_FLAG_WRITING;
 }

 memcpy(scsi_req(rq)->cmd, pc->c, 12);
}
