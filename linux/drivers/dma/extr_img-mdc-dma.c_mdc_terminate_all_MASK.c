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
struct mdc_chan {TYPE_2__ vc; TYPE_1__* desc; } ;
struct dma_chan {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  vd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MDC_CONTROL_AND_STATUS ; 
 int /*<<< orphan*/  MDC_CONTROL_AND_STATUS_CANCEL ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC1 (struct mdc_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mdc_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mdc_chan* FUNC5 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct dma_chan *chan)
{
	struct mdc_chan *mchan = FUNC5(chan);
	unsigned long flags;
	FUNC0(head);

	FUNC3(&mchan->vc.lock, flags);

	FUNC1(mchan, MDC_CONTROL_AND_STATUS_CANCEL,
			MDC_CONTROL_AND_STATUS);

	if (mchan->desc) {
		FUNC8(&mchan->desc->vd);
		mchan->desc = NULL;
	}
	FUNC7(&mchan->vc, &head);

	FUNC2(mchan);

	FUNC4(&mchan->vc.lock, flags);

	FUNC6(&mchan->vc, &head);

	return 0;
}