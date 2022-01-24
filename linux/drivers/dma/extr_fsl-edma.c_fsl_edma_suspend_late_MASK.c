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
struct fsl_edma_engine {int n_chans; struct fsl_edma_chan* chans; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct fsl_edma_chan {TYPE_1__ vchan; int /*<<< orphan*/  pm_state; int /*<<< orphan*/  idle; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUSPENDED ; 
 struct fsl_edma_engine* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsl_edma_chan*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fsl_edma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct fsl_edma_engine *fsl_edma = FUNC0(dev);
	struct fsl_edma_chan *fsl_chan;
	unsigned long flags;
	int i;

	for (i = 0; i < fsl_edma->n_chans; i++) {
		fsl_chan = &fsl_edma->chans[i];
		FUNC4(&fsl_chan->vchan.lock, flags);
		/* Make sure chan is idle or will force disable. */
		if (FUNC6(!fsl_chan->idle)) {
			FUNC1(dev, "WARN: There is non-idle channel.");
			FUNC3(fsl_chan);
			FUNC2(fsl_chan, 0, false);
		}

		fsl_chan->pm_state = SUSPENDED;
		FUNC5(&fsl_chan->vchan.lock, flags);
	}

	return 0;
}