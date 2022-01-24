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
struct owl_dma_vchan {TYPE_1__ vc; int /*<<< orphan*/  pchan; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct owl_dma_vchan* FUNC3 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC4(struct dma_chan *chan)
{
	struct owl_dma_vchan *vchan = FUNC3(chan);
	unsigned long flags;

	FUNC1(&vchan->vc.lock, flags);

	FUNC0(vchan->pchan);

	FUNC2(&vchan->vc.lock, flags);

	return 0;
}