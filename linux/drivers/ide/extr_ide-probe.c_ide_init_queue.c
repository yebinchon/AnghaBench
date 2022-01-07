
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct request_queue {TYPE_2__* queuedata; } ;
struct ide_request {int dummy; } ;
struct blk_mq_tag_set {int nr_hw_queues; int queue_depth; int reserved_tags; int cmd_size; int flags; int numa_node; int * ops; } ;
struct TYPE_5__ {int rqsize; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_6__ {struct request_queue* queue; struct blk_mq_tag_set tag_set; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int BLK_MQ_F_BLOCKING ;
 int BLK_MQ_F_SHOULD_MERGE ;
 scalar_t__ IS_ERR (struct request_queue*) ;
 int PRD_ENTRIES ;
 int QUEUE_FLAG_SCSI_PASSTHROUGH ;
 scalar_t__ blk_mq_alloc_tag_set (struct blk_mq_tag_set*) ;
 int blk_mq_free_tag_set (struct blk_mq_tag_set*) ;
 struct request_queue* blk_mq_init_queue (struct blk_mq_tag_set*) ;
 int blk_queue_flag_set (int ,struct request_queue*) ;
 int blk_queue_max_hw_sectors (struct request_queue*,int) ;
 int blk_queue_max_segments (struct request_queue*,int) ;
 int blk_queue_segment_boundary (struct request_queue*,int) ;
 int hwif_to_node (TYPE_1__*) ;
 int ide_mq_ops ;

__attribute__((used)) static int ide_init_queue(ide_drive_t *drive)
{
 struct request_queue *q;
 ide_hwif_t *hwif = drive->hwif;
 int max_sectors = 256;
 int max_sg_entries = PRD_ENTRIES;
 struct blk_mq_tag_set *set;
 set = &drive->tag_set;
 set->ops = &ide_mq_ops;
 set->nr_hw_queues = 1;
 set->queue_depth = 32;
 set->reserved_tags = 1;
 set->cmd_size = sizeof(struct ide_request);
 set->numa_node = hwif_to_node(hwif);
 set->flags = BLK_MQ_F_SHOULD_MERGE | BLK_MQ_F_BLOCKING;
 if (blk_mq_alloc_tag_set(set))
  return 1;

 q = blk_mq_init_queue(set);
 if (IS_ERR(q)) {
  blk_mq_free_tag_set(set);
  return 1;
 }

 blk_queue_flag_set(QUEUE_FLAG_SCSI_PASSTHROUGH, q);

 q->queuedata = drive;
 blk_queue_segment_boundary(q, 0xffff);

 if (hwif->rqsize < max_sectors)
  max_sectors = hwif->rqsize;
 blk_queue_max_hw_sectors(q, max_sectors);
 blk_queue_max_segments(q, max_sg_entries);


 drive->queue = q;

 return 0;
}
