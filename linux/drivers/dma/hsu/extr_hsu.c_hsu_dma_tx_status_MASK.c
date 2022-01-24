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
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct virt_dma_desc {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  lock; } ;
struct hsu_dma_chan {TYPE_4__ vchan; TYPE_3__* desc; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef  scalar_t__ dma_cookie_t ;
struct TYPE_10__ {size_t length; } ;
struct TYPE_6__ {scalar_t__ cookie; } ;
struct TYPE_7__ {TYPE_1__ tx; } ;
struct TYPE_8__ {int status; TYPE_2__ vdesc; } ;

/* Variables and functions */
 int DMA_COMPLETE ; 
 int FUNC0 (struct dma_chan*,scalar_t__,struct dma_tx_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_tx_state*,size_t) ; 
 size_t FUNC2 (struct hsu_dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct hsu_dma_chan* FUNC5 (struct dma_chan*) ; 
 TYPE_5__* FUNC6 (struct virt_dma_desc*) ; 
 struct virt_dma_desc* FUNC7 (TYPE_4__*,scalar_t__) ; 

__attribute__((used)) static enum dma_status FUNC8(struct dma_chan *chan,
	dma_cookie_t cookie, struct dma_tx_state *state)
{
	struct hsu_dma_chan *hsuc = FUNC5(chan);
	struct virt_dma_desc *vdesc;
	enum dma_status status;
	size_t bytes;
	unsigned long flags;

	status = FUNC0(chan, cookie, state);
	if (status == DMA_COMPLETE)
		return status;

	FUNC3(&hsuc->vchan.lock, flags);
	vdesc = FUNC7(&hsuc->vchan, cookie);
	if (hsuc->desc && cookie == hsuc->desc->vdesc.tx.cookie) {
		bytes = FUNC2(hsuc);
		FUNC1(state, bytes);
		status = hsuc->desc->status;
	} else if (vdesc) {
		bytes = FUNC6(vdesc)->length;
		FUNC1(state, bytes);
	}
	FUNC4(&hsuc->vchan.lock, flags);

	return status;
}