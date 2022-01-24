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
typedef  int uint32_t ;
struct omap_dmadev {TYPE_3__* plat; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct TYPE_5__ {TYPE_1__ chan; } ;
struct omap_chan {int ccr; int running; scalar_t__ cyclic; TYPE_2__ vc; } ;
struct TYPE_6__ {int errata; int /*<<< orphan*/  dma_attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCR ; 
 int CCR_BUFFERING_DISABLE ; 
 int CCR_ENABLE ; 
 int CCR_TRIGGER_SRC ; 
 int /*<<< orphan*/  CICR ; 
 int /*<<< orphan*/  CLNK_CTRL ; 
 int CLNK_CTRL_ENABLE_LNK ; 
 int DMA_ERRATA_i541 ; 
 int /*<<< orphan*/  DMA_IDLEMODE_NO_IDLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int DMA_SYSCONFIG_MIDLEMODE_MASK ; 
 int EINVAL ; 
 int /*<<< orphan*/  OCP_SYSCONFIG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct omap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_chan*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_chan*) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_chan*) ; 
 int FUNC8 (struct omap_dmadev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct omap_dmadev*,int /*<<< orphan*/ ,int) ; 
 struct omap_dmadev* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct omap_chan *c)
{
	struct omap_dmadev *od = FUNC10(c->vc.chan.device);
	uint32_t val;

	/* disable irq */
	FUNC5(c, CICR, 0);

	FUNC6(c);

	val = FUNC4(c, CCR);
	if (od->plat->errata & DMA_ERRATA_i541 && val & CCR_TRIGGER_SRC) {
		uint32_t sysconfig;

		sysconfig = FUNC8(od, OCP_SYSCONFIG);
		val = sysconfig & ~DMA_SYSCONFIG_MIDLEMODE_MASK;
		val |= FUNC0(DMA_IDLEMODE_NO_IDLE);
		FUNC9(od, OCP_SYSCONFIG, val);

		val = FUNC4(c, CCR);
		val &= ~CCR_ENABLE;
		FUNC5(c, CCR, val);

		if (!(c->ccr & CCR_BUFFERING_DISABLE))
			FUNC7(c);

		FUNC9(od, OCP_SYSCONFIG, sysconfig);
	} else {
		if (!(val & CCR_ENABLE))
			return -EINVAL;

		val &= ~CCR_ENABLE;
		FUNC5(c, CCR, val);

		if (!(c->ccr & CCR_BUFFERING_DISABLE))
			FUNC7(c);
	}

	FUNC3();

	if (!FUNC1(od->plat->dma_attr) && c->cyclic) {
		val = FUNC4(c, CLNK_CTRL);

		if (FUNC2())
			val |= 1 << 14; /* set the STOP_LNK bit */
		else
			val &= ~CLNK_CTRL_ENABLE_LNK;

		FUNC5(c, CLNK_CTRL, val);
	}
	c->running = false;
	return 0;
}