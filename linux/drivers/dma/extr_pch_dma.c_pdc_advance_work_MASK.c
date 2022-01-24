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
struct pch_dma_chan {int /*<<< orphan*/  active_list; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pch_dma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pch_dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct pch_dma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pch_dma_chan*) ; 

__attribute__((used)) static void FUNC6(struct pch_dma_chan *pd_chan)
{
	if (FUNC0(&pd_chan->active_list) ||
		FUNC1(&pd_chan->active_list)) {
		FUNC3(pd_chan);
	} else {
		FUNC2(pd_chan, FUNC5(pd_chan));
		FUNC4(pd_chan, FUNC5(pd_chan));
	}
}