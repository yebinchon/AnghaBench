#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct rcar_dmac_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RCAR_DMACHCR ; 
 int RCAR_DMACHCR_DE ; 
 int FUNC0 (struct rcar_dmac_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rcar_dmac_chan*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rcar_dmac_chan*) ; 

__attribute__((used)) static void FUNC3(struct rcar_dmac_chan *chan)
{
	u32 chcr = FUNC0(chan, RCAR_DMACHCR);

	/* set DE=0 and flush remaining data */
	FUNC1(chan, RCAR_DMACHCR, (chcr & ~RCAR_DMACHCR_DE));

	/* make sure all remaining data was flushed */
	FUNC2(chan);
}