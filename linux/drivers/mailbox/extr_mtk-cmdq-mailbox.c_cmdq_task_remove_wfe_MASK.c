#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct device {int dummy; } ;
struct cmdq_task {TYPE_3__* pkt; int /*<<< orphan*/  pa_base; TYPE_2__* cmdq; } ;
struct TYPE_6__ {int* va_base; int /*<<< orphan*/  cmd_buf_size; } ;
struct TYPE_4__ {struct device* dev; } ;
struct TYPE_5__ {TYPE_1__ mbox; } ;

/* Variables and functions */
 scalar_t__ CMDQ_JUMP_BY_OFFSET ; 
 int CMDQ_JUMP_PASS ; 
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct cmdq_task *task)
{
	struct device *dev = task->cmdq->mbox.dev;
	u64 *base = task->pkt->va_base;
	int i;

	FUNC2(dev, task->pa_base, task->pkt->cmd_buf_size,
				DMA_TO_DEVICE);
	for (i = 0; i < FUNC0(task->pkt); i++)
		if (FUNC1(base[i]))
			base[i] = (u64)CMDQ_JUMP_BY_OFFSET << 32 |
				  CMDQ_JUMP_PASS;
	FUNC3(dev, task->pa_base, task->pkt->cmd_buf_size,
				   DMA_TO_DEVICE);
}