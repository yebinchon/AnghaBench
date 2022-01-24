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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct qm_mailbox {int w0; scalar_t__ rsvd; int /*<<< orphan*/  base_h; int /*<<< orphan*/  base_l; int /*<<< orphan*/  queue_num; } ;
struct hisi_qm {int /*<<< orphan*/  mailbox_lock; TYPE_1__* pdev; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int QM_MB_BUSY_SHIFT ; 
 int QM_MB_OP_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hisi_qm*,struct qm_mailbox*) ; 
 int /*<<< orphan*/  FUNC6 (struct hisi_qm*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct hisi_qm *qm, u8 cmd, dma_addr_t dma_addr, u16 queue,
		 bool op)
{
	struct qm_mailbox mailbox;
	int ret = 0;

	FUNC0(&qm->pdev->dev, "QM mailbox request to q%u: %u-%llx\n",
		queue, cmd, (unsigned long long)dma_addr);

	mailbox.w0 = cmd |
		     (op ? 0x1 << QM_MB_OP_SHIFT : 0) |
		     (0x1 << QM_MB_BUSY_SHIFT);
	mailbox.queue_num = queue;
	mailbox.base_l = FUNC2(dma_addr);
	mailbox.base_h = FUNC8(dma_addr);
	mailbox.rsvd = 0;

	FUNC3(&qm->mailbox_lock);

	if (FUNC7(FUNC6(qm))) {
		ret = -EBUSY;
		FUNC1(&qm->pdev->dev, "QM mailbox is busy to start!\n");
		goto busy_unlock;
	}

	FUNC5(qm, &mailbox);

	if (FUNC7(FUNC6(qm))) {
		ret = -EBUSY;
		FUNC1(&qm->pdev->dev, "QM mailbox operation timeout!\n");
		goto busy_unlock;
	}

busy_unlock:
	FUNC4(&qm->mailbox_lock);

	return ret;
}