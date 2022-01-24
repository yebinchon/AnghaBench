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
struct pl08x_phy_chan {int /*<<< orphan*/  lock; struct pl08x_dma_chan* serving; int /*<<< orphan*/  locked; } ;
struct pl08x_driver_data {TYPE_1__* vd; struct pl08x_phy_chan* phy_chans; } ;
struct pl08x_dma_chan {int dummy; } ;
struct TYPE_2__ {int channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct pl08x_phy_chan *
FUNC2(struct pl08x_driver_data *pl08x,
		      struct pl08x_dma_chan *virt_chan)
{
	struct pl08x_phy_chan *ch = NULL;
	unsigned long flags;
	int i;

	for (i = 0; i < pl08x->vd->channels; i++) {
		ch = &pl08x->phy_chans[i];

		FUNC0(&ch->lock, flags);

		if (!ch->locked && !ch->serving) {
			ch->serving = virt_chan;
			FUNC1(&ch->lock, flags);
			break;
		}

		FUNC1(&ch->lock, flags);
	}

	if (i == pl08x->vd->channels) {
		/* No physical channel available, cope with it */
		return NULL;
	}

	return ch;
}