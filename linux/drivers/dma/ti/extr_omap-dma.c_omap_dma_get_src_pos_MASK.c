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
struct omap_dmadev {TYPE_3__* plat; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct TYPE_5__ {TYPE_1__ chan; } ;
struct omap_chan {TYPE_2__ vc; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_6__ {int /*<<< orphan*/  dma_attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDAC ; 
 int /*<<< orphan*/  CPC ; 
 int /*<<< orphan*/  CSAC ; 
 int /*<<< orphan*/  CSSA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (struct omap_chan*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct omap_chan*,int /*<<< orphan*/ ) ; 
 struct omap_dmadev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static dma_addr_t FUNC5(struct omap_chan *c)
{
	struct omap_dmadev *od = FUNC4(c->vc.chan.device);
	dma_addr_t addr, cdac;

	if (FUNC0(od->plat->dma_attr)) {
		addr = FUNC2(c, CPC);
	} else {
		addr = FUNC3(c, CSAC);
		cdac = FUNC3(c, CDAC);

		/*
		 * CDAC == 0 indicates that the DMA transfer on the channel has
		 * not been started (no data has been transferred so far).
		 * Return the programmed source start address in this case.
		 */
		if (cdac == 0)
			addr = FUNC2(c, CSSA);
	}

	if (FUNC1())
		addr |= FUNC2(c, CSSA) & 0xffff0000;

	return addr;
}