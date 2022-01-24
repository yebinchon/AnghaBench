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
struct mxsfb_drm_private {TYPE_1__* devdata; scalar_t__ base; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_2__ {scalar_t__ next_buf; scalar_t__ cur_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mxsfb_drm_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct mxsfb_drm_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct mxsfb_drm_private*) ; 
 scalar_t__ FUNC3 (struct mxsfb_drm_private*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 

void FUNC5(struct mxsfb_drm_private *mxsfb)
{
	dma_addr_t paddr;

	FUNC1(mxsfb);
	FUNC0(mxsfb);

	/* Write cur_buf as well to avoid an initial corrupt frame */
	paddr = FUNC3(mxsfb);
	if (paddr) {
		FUNC4(paddr, mxsfb->base + mxsfb->devdata->cur_buf);
		FUNC4(paddr, mxsfb->base + mxsfb->devdata->next_buf);
	}

	FUNC2(mxsfb);
}