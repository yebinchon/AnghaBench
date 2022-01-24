#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct dma_chan {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  lock; } ;
struct bcm2835_chan {TYPE_5__ vc; TYPE_2__* desc; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_9__ {TYPE_1__ tx; } ;
struct TYPE_8__ {TYPE_3__ vd; } ;

/* Variables and functions */
 int DMA_PREP_INTERRUPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835_chan*) ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct bcm2835_chan* FUNC4 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC9(struct dma_chan *chan)
{
	struct bcm2835_chan *c = FUNC4(chan);
	unsigned long flags;
	FUNC0(head);

	FUNC2(&c->vc.lock, flags);

	/* stop DMA activity */
	if (c->desc) {
		if (c->desc->vd.tx.flags & DMA_PREP_INTERRUPT)
			FUNC7(&c->desc->vd);
		else
			FUNC8(&c->desc->vd);
		c->desc = NULL;
		FUNC1(c);
	}

	FUNC6(&c->vc, &head);
	FUNC3(&c->vc.lock, flags);
	FUNC5(&c->vc, &head);

	return 0;
}