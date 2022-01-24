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
struct shdma_chan {scalar_t__ pm_state; int /*<<< orphan*/  chan_lock; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 scalar_t__ SHDMA_PM_ESTABLISHED ; 
 scalar_t__ SHDMA_PM_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct shdma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct shdma_chan* FUNC3 (struct dma_chan*) ; 

__attribute__((used)) static void FUNC4(struct dma_chan *chan)
{
	struct shdma_chan *schan = FUNC3(chan);

	FUNC1(&schan->chan_lock);
	if (schan->pm_state == SHDMA_PM_ESTABLISHED)
		FUNC0(schan);
	else
		schan->pm_state = SHDMA_PM_PENDING;
	FUNC2(&schan->chan_lock);
}