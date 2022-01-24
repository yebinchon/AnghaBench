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
struct pl08x_dma_chan {int /*<<< orphan*/  vc; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 struct pl08x_dma_chan* FUNC0 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct dma_chan *chan)
{
	struct pl08x_dma_chan *plchan = FUNC0(chan);

	FUNC1(&plchan->vc);
}