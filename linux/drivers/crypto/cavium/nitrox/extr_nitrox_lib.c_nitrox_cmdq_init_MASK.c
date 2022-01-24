#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nitrox_device {int qlen; } ;
struct nitrox_cmdq {int qsize; int instr_size; int /*<<< orphan*/  backlog_count; int /*<<< orphan*/  pending_count; int /*<<< orphan*/  backlog_qflush; int /*<<< orphan*/  backlog_head; int /*<<< orphan*/  response_head; int /*<<< orphan*/  backlog_qlock; int /*<<< orphan*/  resp_qlock; int /*<<< orphan*/  cmd_qlock; scalar_t__ write_idx; scalar_t__ unalign_dma; scalar_t__ dma; scalar_t__ unalign_base; scalar_t__ base; struct nitrox_device* ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nitrox_device*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  backlog_qflush_work ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct nitrox_cmdq *cmdq, int align_bytes)
{
	struct nitrox_device *ndev = cmdq->ndev;

	cmdq->qsize = (ndev->qlen * cmdq->instr_size) + align_bytes;
	cmdq->unalign_base = FUNC5(FUNC0(ndev), cmdq->qsize,
						&cmdq->unalign_dma,
						GFP_KERNEL);
	if (!cmdq->unalign_base)
		return -ENOMEM;

	cmdq->dma = FUNC3(cmdq->unalign_dma, align_bytes);
	cmdq->base = cmdq->unalign_base + (cmdq->dma - cmdq->unalign_dma);
	cmdq->write_idx = 0;

	FUNC6(&cmdq->cmd_qlock);
	FUNC6(&cmdq->resp_qlock);
	FUNC6(&cmdq->backlog_qlock);

	FUNC1(&cmdq->response_head);
	FUNC1(&cmdq->backlog_head);
	FUNC2(&cmdq->backlog_qflush, backlog_qflush_work);

	FUNC4(&cmdq->pending_count, 0);
	FUNC4(&cmdq->backlog_count, 0);
	return 0;
}