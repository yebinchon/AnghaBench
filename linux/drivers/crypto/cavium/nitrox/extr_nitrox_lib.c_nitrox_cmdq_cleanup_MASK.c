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
struct nitrox_device {int dummy; } ;
struct nitrox_cmdq {scalar_t__ instr_size; scalar_t__ qsize; scalar_t__ dma; scalar_t__ unalign_dma; int /*<<< orphan*/ * base; int /*<<< orphan*/ * unalign_base; int /*<<< orphan*/ * compl_cnt_csr_addr; int /*<<< orphan*/ * dbell_csr_addr; int /*<<< orphan*/  backlog_qflush; struct nitrox_device* ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct nitrox_cmdq*) ; 

__attribute__((used)) static void FUNC4(struct nitrox_cmdq *cmdq)
{
	struct nitrox_device *ndev;

	if (!cmdq)
		return;

	if (!cmdq->unalign_base)
		return;

	ndev = cmdq->ndev;
	FUNC1(&cmdq->backlog_qflush);

	FUNC2(FUNC0(ndev), cmdq->qsize,
			  cmdq->unalign_base, cmdq->unalign_dma);
	FUNC3(cmdq);

	cmdq->dbell_csr_addr = NULL;
	cmdq->compl_cnt_csr_addr = NULL;
	cmdq->unalign_base = NULL;
	cmdq->base = NULL;
	cmdq->unalign_dma = 0;
	cmdq->dma = 0;
	cmdq->qsize = 0;
	cmdq->instr_size = 0;
}