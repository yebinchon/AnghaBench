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
struct coh901318_desc {int /*<<< orphan*/  lli; int /*<<< orphan*/  head_ctrl; int /*<<< orphan*/  head_config; } ;
struct coh901318_chan {int busy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct coh901318_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct coh901318_chan*,struct coh901318_desc*) ; 
 struct coh901318_desc* FUNC2 (struct coh901318_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct coh901318_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct coh901318_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct coh901318_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct coh901318_chan*) ; 

__attribute__((used)) static struct coh901318_desc *FUNC7(struct coh901318_chan *cohc)
{
	struct coh901318_desc *cohd;

	/*
	 * start queued jobs, if any
	 * TODO: transmit all queued jobs in one go
	 */
	cohd = FUNC2(cohc);

	if (cohd != NULL) {
		/* Remove from queue */
		FUNC0(cohd);
		/* initiate DMA job */
		cohc->busy = 1;

		FUNC1(cohc, cohd);

		/* Program the transaction head */
		FUNC4(cohc, cohd->head_config);
		FUNC5(cohc, cohd->head_ctrl);
		FUNC3(cohc, cohd->lli);

		/* start dma job on this channel */
		FUNC6(cohc);

	}

	return cohd;
}