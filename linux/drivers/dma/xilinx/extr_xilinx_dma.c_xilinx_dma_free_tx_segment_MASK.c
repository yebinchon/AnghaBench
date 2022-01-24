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
struct xilinx_dma_chan {int /*<<< orphan*/  free_seg_list; } ;
struct xilinx_axidma_tx_segment {int /*<<< orphan*/  node; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct xilinx_dma_chan *chan,
				struct xilinx_axidma_tx_segment *segment)
{
	FUNC1(&segment->hw);

	FUNC0(&segment->node, &chan->free_seg_list);
}