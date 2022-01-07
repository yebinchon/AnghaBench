
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {unsigned int dma_pad_mask; } ;
struct request {scalar_t__ bio; int rq_flags; int cmd_type; int * cmd; } ;
struct TYPE_3__ {int dma; int dev_flags; struct request_queue* queue; } ;
typedef TYPE_1__ ide_drive_t ;


 int IDE_DBG_PC ;
 int IDE_DFLAG_USING_DMA ;
 int RQF_FAILED ;
 int RQF_QUIET ;
 char* bio_data (scalar_t__) ;
 int blk_rq_bytes (struct request*) ;
 scalar_t__ blk_rq_is_scsi (struct request*) ;
 int ide_debug_log (int ,char*,int ,int ) ;
 scalar_t__ object_is_on_stack (char*) ;
 unsigned int queue_dma_alignment (struct request_queue*) ;

__attribute__((used)) static void cdrom_do_block_pc(ide_drive_t *drive, struct request *rq)
{

 ide_debug_log(IDE_DBG_PC, "rq->cmd[0]: 0x%x, rq->cmd_type: 0x%x",
      rq->cmd[0], rq->cmd_type);

 if (blk_rq_is_scsi(rq))
  rq->rq_flags |= RQF_QUIET;
 else
  rq->rq_flags &= ~RQF_FAILED;

 drive->dma = 0;


 if (rq->bio) {
  struct request_queue *q = drive->queue;
  char *buf = bio_data(rq->bio);
  unsigned int alignment;

  drive->dma = !!(drive->dev_flags & IDE_DFLAG_USING_DMA);







  alignment = queue_dma_alignment(q) | q->dma_pad_mask;
  if ((unsigned long)buf & alignment
      || blk_rq_bytes(rq) & q->dma_pad_mask
      || object_is_on_stack(buf))
   drive->dma = 0;
 }
}
