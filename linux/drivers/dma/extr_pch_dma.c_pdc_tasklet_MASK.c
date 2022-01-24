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
struct pch_dma_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  err_status; int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pch_dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct pch_dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct pch_dma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(unsigned long data)
{
	struct pch_dma_chan *pd_chan = (struct pch_dma_chan *)data;
	unsigned long flags;

	if (!FUNC4(pd_chan)) {
		FUNC1(FUNC0(&pd_chan->chan),
			"BUG: handle non-idle channel in tasklet\n");
		return;
	}

	FUNC5(&pd_chan->lock, flags);
	if (FUNC7(0, &pd_chan->err_status))
		FUNC3(pd_chan);
	else
		FUNC2(pd_chan);
	FUNC6(&pd_chan->lock, flags);
}