#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  cookie; } ;
struct pch_dma_desc {TYPE_1__ txd; int /*<<< orphan*/  desc_node; } ;
struct TYPE_4__ {int /*<<< orphan*/  prev; } ;
struct pch_dma_chan {int /*<<< orphan*/  chan; TYPE_2__ active_list; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pch_dma_chan*,struct pch_dma_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct pch_dma_chan*,struct pch_dma_desc*) ; 
 struct pch_dma_desc* FUNC7 (struct pch_dma_chan*) ; 

__attribute__((used)) static void FUNC8(struct pch_dma_chan *pd_chan)
{
	struct pch_dma_desc *bad_desc;

	bad_desc = FUNC7(pd_chan);
	FUNC2(&bad_desc->desc_node);

	FUNC4(&pd_chan->queue, pd_chan->active_list.prev);

	if (!FUNC3(&pd_chan->active_list))
		FUNC6(pd_chan, FUNC7(pd_chan));

	FUNC1(FUNC0(&pd_chan->chan), "Bad descriptor submitted\n");
	FUNC1(FUNC0(&pd_chan->chan), "descriptor cookie: %d\n",
		 bad_desc->txd.cookie);

	FUNC5(pd_chan, bad_desc);
}