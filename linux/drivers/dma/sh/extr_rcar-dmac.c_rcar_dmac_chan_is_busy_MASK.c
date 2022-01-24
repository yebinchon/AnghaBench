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
 int RCAR_DMACHCR_TE ; 
 int FUNC0 (struct rcar_dmac_chan*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct rcar_dmac_chan *chan)
{
	u32 chcr = FUNC0(chan, RCAR_DMACHCR);

	return !!(chcr & (RCAR_DMACHCR_DE | RCAR_DMACHCR_TE));
}