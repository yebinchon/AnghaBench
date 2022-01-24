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
struct sun6i_vchan {int /*<<< orphan*/  vc; int /*<<< orphan*/  node; } ;
struct sun6i_dma_dev {int /*<<< orphan*/  lock; } ;
struct dma_chan {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct sun6i_dma_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sun6i_vchan* FUNC4 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct dma_chan *chan)
{
	struct sun6i_dma_dev *sdev = FUNC3(chan->device);
	struct sun6i_vchan *vchan = FUNC4(chan);
	unsigned long flags;

	FUNC1(&sdev->lock, flags);
	FUNC0(&vchan->node);
	FUNC2(&sdev->lock, flags);

	FUNC5(&vchan->vc);
}