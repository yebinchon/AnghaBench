#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct owl_dma_vchan {TYPE_2__ vc; TYPE_1__* txd; scalar_t__ pchan; } ;
struct owl_dma {int dummy; } ;
struct dma_chan {int /*<<< orphan*/  device; } ;
struct TYPE_4__ {int /*<<< orphan*/  vd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct owl_dma*,struct owl_dma_vchan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct owl_dma* FUNC5 (int /*<<< orphan*/ ) ; 
 struct owl_dma_vchan* FUNC6 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct dma_chan *chan)
{
	struct owl_dma *od = FUNC5(chan->device);
	struct owl_dma_vchan *vchan = FUNC6(chan);
	unsigned long flags;
	FUNC0(head);

	FUNC3(&vchan->vc.lock, flags);

	if (vchan->pchan)
		FUNC2(od, vchan);

	if (vchan->txd) {
		FUNC1(&vchan->txd->vd);
		vchan->txd = NULL;
	}

	FUNC8(&vchan->vc, &head);
	FUNC7(&vchan->vc, &head);

	FUNC4(&vchan->vc.lock, flags);

	return 0;
}