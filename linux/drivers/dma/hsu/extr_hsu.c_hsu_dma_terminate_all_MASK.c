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
struct hsu_dma_chan {TYPE_2__ vchan; TYPE_1__* desc; } ;
struct dma_chan {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  vdesc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hsu_dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct hsu_dma_chan* FUNC5 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct dma_chan *chan)
{
	struct hsu_dma_chan *hsuc = FUNC5(chan);
	unsigned long flags;
	FUNC0(head);

	FUNC3(&hsuc->vchan.lock, flags);

	FUNC2(hsuc);
	if (hsuc->desc) {
		FUNC1(&hsuc->desc->vdesc);
		hsuc->desc = NULL;
	}

	FUNC7(&hsuc->vchan, &head);
	FUNC4(&hsuc->vchan.lock, flags);
	FUNC6(&hsuc->vchan, &head);

	return 0;
}