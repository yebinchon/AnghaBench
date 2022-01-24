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
struct iop_adma_chan {scalar_t__ pending; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iop_adma_chan*) ; 
 struct iop_adma_chan* FUNC1 (struct dma_chan*) ; 

__attribute__((used)) static void FUNC2(struct dma_chan *chan)
{
	struct iop_adma_chan *iop_chan = FUNC1(chan);

	if (iop_chan->pending) {
		iop_chan->pending = 0;
		FUNC0(iop_chan);
	}
}