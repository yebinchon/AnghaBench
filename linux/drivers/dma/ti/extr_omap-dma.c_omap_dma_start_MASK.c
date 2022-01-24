#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int uint16_t ;
struct omap_dmadev {scalar_t__ ll123_supported; TYPE_3__* plat; } ;
struct omap_desc {int cicr; scalar_t__ dir; int ccr; TYPE_4__* sg; scalar_t__ using_ll; } ;
struct TYPE_5__ {int /*<<< orphan*/  device; } ;
struct TYPE_6__ {TYPE_1__ chan; } ;
struct omap_chan {int running; TYPE_2__ vc; } ;
struct TYPE_8__ {int t2_desc_paddr; } ;
struct TYPE_7__ {int /*<<< orphan*/  dma_attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCDN ; 
 int /*<<< orphan*/  CCEN ; 
 int /*<<< orphan*/  CCFN ; 
 int /*<<< orphan*/  CCR ; 
 int CCR_ENABLE ; 
 int /*<<< orphan*/  CDAC ; 
 int /*<<< orphan*/  CDP ; 
 int CDP_DST_VALID_RELOAD ; 
 int CDP_DST_VALID_REUSE ; 
 int CDP_FAST ; 
 int CDP_NTYPE_TYPE2 ; 
 int CDP_SRC_VALID_RELOAD ; 
 int CDP_SRC_VALID_REUSE ; 
 int CDP_TMODE_LLIST ; 
 int /*<<< orphan*/  CICR ; 
 int CICR_BLOCK_IE ; 
 int /*<<< orphan*/  CNDP ; 
 int /*<<< orphan*/  CPC ; 
 scalar_t__ DMA_DEV_TO_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_chan*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_chan*) ; 
 struct omap_dmadev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct omap_chan *c, struct omap_desc *d)
{
	struct omap_dmadev *od = FUNC3(c->vc.chan.device);
	uint16_t cicr = d->cicr;

	if (FUNC0(od->plat->dma_attr))
		FUNC1(c, CPC, 0);
	else
		FUNC1(c, CDAC, 0);

	FUNC2(c);

	if (d->using_ll) {
		uint32_t cdp = CDP_TMODE_LLIST | CDP_NTYPE_TYPE2 | CDP_FAST;

		if (d->dir == DMA_DEV_TO_MEM)
			cdp |= (CDP_DST_VALID_RELOAD | CDP_SRC_VALID_REUSE);
		else
			cdp |= (CDP_DST_VALID_REUSE | CDP_SRC_VALID_RELOAD);
		FUNC1(c, CDP, cdp);

		FUNC1(c, CNDP, d->sg[0].t2_desc_paddr);
		FUNC1(c, CCDN, 0);
		FUNC1(c, CCFN, 0xffff);
		FUNC1(c, CCEN, 0xffffff);

		cicr &= ~CICR_BLOCK_IE;
	} else if (od->ll123_supported) {
		FUNC1(c, CDP, 0);
	}

	/* Enable interrupts */
	FUNC1(c, CICR, cicr);

	/* Enable channel */
	FUNC1(c, CCR, d->ccr | CCR_ENABLE);

	c->running = true;
}