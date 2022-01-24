#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct sun4i_dma_vchan {TYPE_1__ vc; } ;
struct sun4i_dma_dev {int dummy; } ;
struct dma_chan {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sun4i_dma_dev*,struct sun4i_dma_vchan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct sun4i_dma_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sun4i_dma_vchan* FUNC4 (struct dma_chan*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(struct dma_chan *chan)
{
	struct sun4i_dma_dev *priv = FUNC3(chan->device);
	struct sun4i_dma_vchan *vchan = FUNC4(chan);
	unsigned long flags;

	FUNC1(&vchan->vc.lock, flags);

	/*
	 * If there are pending transactions for this vchan, push one of
	 * them into the engine to get the ball rolling.
	 */
	if (FUNC5(&vchan->vc))
		FUNC0(priv, vchan);

	FUNC2(&vchan->vc.lock, flags);
}