#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sec_queue_ring_db {int /*<<< orphan*/  paddr; void* vaddr; } ;
struct sec_queue_ring_cq {int /*<<< orphan*/  paddr; void* vaddr; } ;
struct sec_queue_ring_cmd {int /*<<< orphan*/  paddr; void* vaddr; int /*<<< orphan*/  callback; int /*<<< orphan*/  lock; int /*<<< orphan*/  used; } ;
struct sec_queue {int queue_id; struct sec_queue_ring_cmd ring_cmd; struct sec_queue_ring_cq ring_cq; struct sec_queue_ring_db ring_db; int /*<<< orphan*/  task_irq; TYPE_1__* dev_info; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SEC_Q_CMD_SIZE ; 
 int /*<<< orphan*/  SEC_Q_CQ_SIZE ; 
 int /*<<< orphan*/  SEC_Q_DB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sec_alg_callback ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct sec_queue *queue)
{
	struct device *dev = queue->dev_info->dev;
	struct sec_queue_ring_cmd *ring_cmd = &queue->ring_cmd;
	struct sec_queue_ring_cq *ring_cq = &queue->ring_cq;
	struct sec_queue_ring_db *ring_db = &queue->ring_db;
	int ret;

	ring_cmd->vaddr = FUNC1(dev, SEC_Q_CMD_SIZE,
					     &ring_cmd->paddr, GFP_KERNEL);
	if (!ring_cmd->vaddr)
		return -ENOMEM;

	FUNC0(&ring_cmd->used, 0);
	FUNC3(&ring_cmd->lock);
	ring_cmd->callback = sec_alg_callback;

	ring_cq->vaddr = FUNC1(dev, SEC_Q_CQ_SIZE,
					    &ring_cq->paddr, GFP_KERNEL);
	if (!ring_cq->vaddr) {
		ret = -ENOMEM;
		goto err_free_ring_cmd;
	}

	ring_db->vaddr = FUNC1(dev, SEC_Q_DB_SIZE,
					    &ring_db->paddr, GFP_KERNEL);
	if (!ring_db->vaddr) {
		ret = -ENOMEM;
		goto err_free_ring_cq;
	}
	queue->task_irq = FUNC4(FUNC5(dev),
					   queue->queue_id * 2 + 1);
	if (queue->task_irq <= 0) {
		ret = -EINVAL;
		goto err_free_ring_db;
	}

	return 0;

err_free_ring_db:
	FUNC2(dev, SEC_Q_DB_SIZE, queue->ring_db.vaddr,
			  queue->ring_db.paddr);
err_free_ring_cq:
	FUNC2(dev, SEC_Q_CQ_SIZE, queue->ring_cq.vaddr,
			  queue->ring_cq.paddr);
err_free_ring_cmd:
	FUNC2(dev, SEC_Q_CMD_SIZE, queue->ring_cmd.vaddr,
			  queue->ring_cmd.paddr);

	return ret;
}