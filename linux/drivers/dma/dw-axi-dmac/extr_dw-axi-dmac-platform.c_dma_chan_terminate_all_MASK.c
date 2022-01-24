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
struct dma_chan {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct axi_dma_chan {TYPE_1__ vc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct axi_dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct axi_dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_chan*) ; 
 struct axi_dma_chan* FUNC4 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct dma_chan *dchan)
{
	struct axi_dma_chan *chan = FUNC4(dchan);
	unsigned long flags;
	FUNC0(head);

	FUNC6(&chan->vc.lock, flags);

	FUNC1(chan);

	FUNC9(&chan->vc, &head);

	/*
	 * As vchan_dma_desc_free_list can access to desc_allocated list
	 * we need to call it in vc.lock context.
	 */
	FUNC8(&chan->vc, &head);

	FUNC7(&chan->vc.lock, flags);

	FUNC5(FUNC3(dchan), "terminated: %s\n", FUNC2(chan));

	return 0;
}