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
typedef  scalar_t__ uint32_t ;
struct omap_dmadev {TYPE_3__* plat; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct TYPE_5__ {TYPE_1__ chan; } ;
struct omap_chan {TYPE_2__ vc; } ;
struct TYPE_6__ {int errata; } ;

/* Variables and functions */
 int DMA_ERRATA_3_3 ; 
 scalar_t__ FUNC0 (struct omap_chan*,unsigned int) ; 
 struct omap_dmadev* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t FUNC2(struct omap_chan *c, unsigned reg)
{
	struct omap_dmadev *od = FUNC1(c->vc.chan.device);
	uint32_t val;

	val = FUNC0(c, reg);
	if (val == 0 && od->plat->errata & DMA_ERRATA_3_3)
		val = FUNC0(c, reg);

	return val;
}