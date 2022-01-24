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
struct at_dma_chan {int /*<<< orphan*/  active_list; int /*<<< orphan*/  chan_common; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct at_dma_chan*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct at_dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct at_dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct at_dma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct at_dma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct at_dma_chan *atchan)
{
	FUNC6(FUNC5(&atchan->chan_common), "advance_work\n");

	if (FUNC1(atchan))
		return;

	if (FUNC7(&atchan->active_list) ||
	    FUNC8(&atchan->active_list)) {
		FUNC2(atchan);
	} else {
		FUNC0(atchan, FUNC4(atchan));
		/* advance work */
		FUNC3(atchan, FUNC4(atchan));
	}
}