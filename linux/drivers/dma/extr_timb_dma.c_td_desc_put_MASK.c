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
struct timb_dma_desc {int /*<<< orphan*/  desc_node; } ;
struct timb_dma_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  free_list; int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct timb_dma_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct timb_dma_chan *td_chan,
	struct timb_dma_desc *td_desc)
{
	FUNC1(FUNC0(&td_chan->chan), "Putting desc: %p\n", td_desc);

	FUNC3(&td_chan->lock);
	FUNC2(&td_desc->desc_node, &td_chan->free_list);
	FUNC4(&td_chan->lock);
}