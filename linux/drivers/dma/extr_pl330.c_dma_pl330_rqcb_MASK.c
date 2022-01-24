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
struct dma_pl330_desc {int /*<<< orphan*/  status; struct dma_pl330_chan* pchan; } ;
struct dma_pl330_chan {int /*<<< orphan*/  task; int /*<<< orphan*/  lock; } ;
typedef  enum pl330_op_err { ____Placeholder_pl330_op_err } pl330_op_err ;

/* Variables and functions */
 int /*<<< orphan*/  DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct dma_pl330_desc *desc, enum pl330_op_err err)
{
	struct dma_pl330_chan *pch;
	unsigned long flags;

	if (!desc)
		return;

	pch = desc->pchan;

	/* If desc aborted */
	if (!pch)
		return;

	FUNC0(&pch->lock, flags);

	desc->status = DONE;

	FUNC1(&pch->lock, flags);

	FUNC2(&pch->task);
}