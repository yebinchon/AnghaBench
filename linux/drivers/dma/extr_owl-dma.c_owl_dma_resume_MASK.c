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
struct owl_dma_vchan {TYPE_1__ vc; int /*<<< orphan*/  pchan; int /*<<< orphan*/  txd; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct owl_dma_vchan* FUNC5 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC6(struct dma_chan *chan)
{
	struct owl_dma_vchan *vchan = FUNC5(chan);
	unsigned long flags;

	if (!vchan->pchan && !vchan->txd)
		return 0;

	FUNC1(FUNC0(chan), "vchan %p: resume\n", &vchan->vc);

	FUNC3(&vchan->vc.lock, flags);

	FUNC2(vchan->pchan);

	FUNC4(&vchan->vc.lock, flags);

	return 0;
}