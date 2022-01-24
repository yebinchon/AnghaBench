#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct request_queue {unsigned int dma_pad_mask; } ;
struct request {scalar_t__ bio; int /*<<< orphan*/  rq_flags; int /*<<< orphan*/  cmd_type; int /*<<< orphan*/ * cmd; } ;
struct TYPE_3__ {int dma; int dev_flags; struct request_queue* queue; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  IDE_DBG_PC ; 
 int IDE_DFLAG_USING_DMA ; 
 int /*<<< orphan*/  RQF_FAILED ; 
 int /*<<< orphan*/  RQF_QUIET ; 
 char* FUNC0 (scalar_t__) ; 
 int FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*) ; 
 unsigned int FUNC5 (struct request_queue*) ; 

__attribute__((used)) static void FUNC6(ide_drive_t *drive, struct request *rq)
{

	FUNC3(IDE_DBG_PC, "rq->cmd[0]: 0x%x, rq->cmd_type: 0x%x",
				  rq->cmd[0], rq->cmd_type);

	if (FUNC2(rq))
		rq->rq_flags |= RQF_QUIET;
	else
		rq->rq_flags &= ~RQF_FAILED;

	drive->dma = 0;

	/* sg request */
	if (rq->bio) {
		struct request_queue *q = drive->queue;
		char *buf = FUNC0(rq->bio);
		unsigned int alignment;

		drive->dma = !!(drive->dev_flags & IDE_DFLAG_USING_DMA);

		/*
		 * check if dma is safe
		 *
		 * NOTE! The "len" and "addr" checks should possibly have
		 * separate masks.
		 */
		alignment = FUNC5(q) | q->dma_pad_mask;
		if ((unsigned long)buf & alignment
		    || FUNC1(rq) & q->dma_pad_mask
		    || FUNC4(buf))
			drive->dma = 0;
	}
}