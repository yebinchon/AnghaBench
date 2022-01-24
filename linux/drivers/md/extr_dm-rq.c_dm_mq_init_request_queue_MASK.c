#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int dummy; } ;
struct mapped_device {int init_tio_pdu; TYPE_1__* tag_set; int /*<<< orphan*/  queue; int /*<<< orphan*/  numa_node_id; } ;
struct dm_target {scalar_t__ per_io_data_size; } ;
struct dm_table {int dummy; } ;
struct dm_rq_target_io {int dummy; } ;
struct blk_mq_tag_set {int dummy; } ;
struct TYPE_6__ {int cmd_size; struct mapped_device* driver_data; int /*<<< orphan*/  nr_hw_queues; int /*<<< orphan*/  flags; int /*<<< orphan*/  numa_node; int /*<<< orphan*/  queue_depth; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_MQ_F_SHOULD_MERGE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct request_queue*) ; 
 int FUNC1 (struct request_queue*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 struct request_queue* FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  dm_mq_ops ; 
 struct dm_target* FUNC7 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct mapped_device *md, struct dm_table *t)
{
	struct request_queue *q;
	struct dm_target *immutable_tgt;
	int err;

	md->tag_set = FUNC9(sizeof(struct blk_mq_tag_set), GFP_KERNEL, md->numa_node_id);
	if (!md->tag_set)
		return -ENOMEM;

	md->tag_set->ops = &dm_mq_ops;
	md->tag_set->queue_depth = FUNC6();
	md->tag_set->numa_node = md->numa_node_id;
	md->tag_set->flags = BLK_MQ_F_SHOULD_MERGE;
	md->tag_set->nr_hw_queues = FUNC5();
	md->tag_set->driver_data = md;

	md->tag_set->cmd_size = sizeof(struct dm_rq_target_io);
	immutable_tgt = FUNC7(t);
	if (immutable_tgt && immutable_tgt->per_io_data_size) {
		/* any target-specific per-io data is immediately after the tio */
		md->tag_set->cmd_size += immutable_tgt->per_io_data_size;
		md->init_tio_pdu = true;
	}

	err = FUNC2(md->tag_set);
	if (err)
		goto out_kfree_tag_set;

	q = FUNC4(md->tag_set, md->queue, true);
	if (FUNC0(q)) {
		err = FUNC1(q);
		goto out_tag_set;
	}

	return 0;

out_tag_set:
	FUNC3(md->tag_set);
out_kfree_tag_set:
	FUNC8(md->tag_set);

	return err;
}