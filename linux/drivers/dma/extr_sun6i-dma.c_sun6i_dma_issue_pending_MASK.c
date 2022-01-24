#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct sun6i_vchan {TYPE_1__ vc; int /*<<< orphan*/  node; int /*<<< orphan*/  phy; } ;
struct sun6i_dma_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  task; int /*<<< orphan*/  pending; } ;
struct dma_chan {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct sun6i_dma_dev* FUNC9 (int /*<<< orphan*/ ) ; 
 struct sun6i_vchan* FUNC10 (struct dma_chan*) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC12(struct dma_chan *chan)
{
	struct sun6i_dma_dev *sdev = FUNC9(chan->device);
	struct sun6i_vchan *vchan = FUNC10(chan);
	unsigned long flags;

	FUNC5(&vchan->vc.lock, flags);

	if (FUNC11(&vchan->vc)) {
		FUNC4(&sdev->lock);

		if (!vchan->phy && FUNC3(&vchan->node)) {
			FUNC2(&vchan->node, &sdev->pending);
			FUNC8(&sdev->task);
			FUNC1(FUNC0(chan), "vchan %p: issued\n",
				&vchan->vc);
		}

		FUNC6(&sdev->lock);
	} else {
		FUNC1(FUNC0(chan), "vchan %p: nothing to issue\n",
			&vchan->vc);
	}

	FUNC7(&vchan->vc.lock, flags);
}