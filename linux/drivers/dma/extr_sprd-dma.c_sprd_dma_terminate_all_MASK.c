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
struct virt_dma_desc {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct sprd_dma_chn {TYPE_2__ vc; TYPE_1__* cur_desc; } ;
struct dma_chan {int dummy; } ;
struct TYPE_4__ {struct virt_dma_desc vd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct virt_dma_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct sprd_dma_chn*) ; 
 struct sprd_dma_chn* FUNC5 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct dma_chan *chan)
{
	struct sprd_dma_chn *schan = FUNC5(chan);
	struct virt_dma_desc *cur_vd = NULL;
	unsigned long flags;
	FUNC0(head);

	FUNC1(&schan->vc.lock, flags);
	if (schan->cur_desc)
		cur_vd = &schan->cur_desc->vd;

	FUNC4(schan);

	FUNC7(&schan->vc, &head);
	FUNC2(&schan->vc.lock, flags);

	if (cur_vd)
		FUNC3(cur_vd);

	FUNC6(&schan->vc, &head);
	return 0;
}