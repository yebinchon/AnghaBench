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
struct xilinx_dma_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  (* start_transfer ) (struct xilinx_dma_chan*) ;} ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct xilinx_dma_chan*) ; 
 struct xilinx_dma_chan* FUNC3 (struct dma_chan*) ; 

__attribute__((used)) static void FUNC4(struct dma_chan *dchan)
{
	struct xilinx_dma_chan *chan = FUNC3(dchan);
	unsigned long flags;

	FUNC0(&chan->lock, flags);
	chan->start_transfer(chan);
	FUNC1(&chan->lock, flags);
}