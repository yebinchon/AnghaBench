#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct virt_dma_desc {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct sprd_dma_chn {TYPE_3__ vc; TYPE_2__* cur_desc; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_5__ {struct virt_dma_desc vd; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct virt_dma_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct sprd_dma_chn*) ; 
 struct sprd_dma_chn* FUNC5 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC7(struct dma_chan *chan)
{
	struct sprd_dma_chn *schan = FUNC5(chan);
	struct virt_dma_desc *cur_vd = NULL;
	unsigned long flags;

	FUNC1(&schan->vc.lock, flags);
	if (schan->cur_desc)
		cur_vd = &schan->cur_desc->vd;

	FUNC4(schan);
	FUNC2(&schan->vc.lock, flags);

	if (cur_vd)
		FUNC3(cur_vd);

	FUNC6(&schan->vc);
	FUNC0(chan->device->dev);
}