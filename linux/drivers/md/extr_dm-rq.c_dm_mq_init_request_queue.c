
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct mapped_device {int init_tio_pdu; TYPE_1__* tag_set; int queue; int numa_node_id; } ;
struct dm_target {scalar_t__ per_io_data_size; } ;
struct dm_table {int dummy; } ;
struct dm_rq_target_io {int dummy; } ;
struct blk_mq_tag_set {int dummy; } ;
struct TYPE_6__ {int cmd_size; struct mapped_device* driver_data; int nr_hw_queues; int flags; int numa_node; int queue_depth; int * ops; } ;


 int BLK_MQ_F_SHOULD_MERGE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct request_queue*) ;
 int PTR_ERR (struct request_queue*) ;
 int blk_mq_alloc_tag_set (TYPE_1__*) ;
 int blk_mq_free_tag_set (TYPE_1__*) ;
 struct request_queue* blk_mq_init_allocated_queue (TYPE_1__*,int ,int) ;
 int dm_get_blk_mq_nr_hw_queues () ;
 int dm_get_blk_mq_queue_depth () ;
 int dm_mq_ops ;
 struct dm_target* dm_table_get_immutable_target (struct dm_table*) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc_node (int,int ,int ) ;

int dm_mq_init_request_queue(struct mapped_device *md, struct dm_table *t)
{
 struct request_queue *q;
 struct dm_target *immutable_tgt;
 int err;

 md->tag_set = kzalloc_node(sizeof(struct blk_mq_tag_set), GFP_KERNEL, md->numa_node_id);
 if (!md->tag_set)
  return -ENOMEM;

 md->tag_set->ops = &dm_mq_ops;
 md->tag_set->queue_depth = dm_get_blk_mq_queue_depth();
 md->tag_set->numa_node = md->numa_node_id;
 md->tag_set->flags = BLK_MQ_F_SHOULD_MERGE;
 md->tag_set->nr_hw_queues = dm_get_blk_mq_nr_hw_queues();
 md->tag_set->driver_data = md;

 md->tag_set->cmd_size = sizeof(struct dm_rq_target_io);
 immutable_tgt = dm_table_get_immutable_target(t);
 if (immutable_tgt && immutable_tgt->per_io_data_size) {

  md->tag_set->cmd_size += immutable_tgt->per_io_data_size;
  md->init_tio_pdu = 1;
 }

 err = blk_mq_alloc_tag_set(md->tag_set);
 if (err)
  goto out_kfree_tag_set;

 q = blk_mq_init_allocated_queue(md->tag_set, md->queue, 1);
 if (IS_ERR(q)) {
  err = PTR_ERR(q);
  goto out_tag_set;
 }

 return 0;

out_tag_set:
 blk_mq_free_tag_set(md->tag_set);
out_kfree_tag_set:
 kfree(md->tag_set);

 return err;
}
