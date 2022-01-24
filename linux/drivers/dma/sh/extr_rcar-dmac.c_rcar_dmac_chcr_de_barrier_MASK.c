#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct rcar_dmac_chan {TYPE_2__ chan; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RCAR_DMACHCR ; 
 int RCAR_DMACHCR_DE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct rcar_dmac_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct rcar_dmac_chan *chan)
{
	u32 chcr;
	unsigned int i;

	/*
	 * Ensure that the setting of the DE bit is actually 0 after
	 * clearing it.
	 */
	for (i = 0; i < 1024; i++) {
		chcr = FUNC1(chan, RCAR_DMACHCR);
		if (!(chcr & RCAR_DMACHCR_DE))
			return;
		FUNC2(1);
	}

	FUNC0(chan->chan.device->dev, "CHCR DE check error\n");
}