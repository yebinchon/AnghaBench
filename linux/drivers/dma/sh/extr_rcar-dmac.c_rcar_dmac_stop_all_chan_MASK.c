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
struct rcar_dmac_chan {int /*<<< orphan*/  lock; } ;
struct rcar_dmac {unsigned int n_channels; int channels_mask; struct rcar_dmac_chan* channels; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct rcar_dmac_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct rcar_dmac *dmac)
{
	unsigned int i;

	/* Stop all channels. */
	for (i = 0; i < dmac->n_channels; ++i) {
		struct rcar_dmac_chan *chan = &dmac->channels[i];

		if (!(dmac->channels_mask & FUNC0(i)))
			continue;

		/* Stop and reinitialize the channel. */
		FUNC2(&chan->lock);
		FUNC1(chan);
		FUNC3(&chan->lock);
	}
}