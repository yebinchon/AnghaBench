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
typedef  int u16 ;
struct rcar_dmac {int channels_mask; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  RCAR_DMACHCLR ; 
 int /*<<< orphan*/  RCAR_DMAOR ; 
 int RCAR_DMAOR_AE ; 
 int RCAR_DMAOR_DME ; 
 int RCAR_DMAOR_PRI_FIXED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct rcar_dmac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rcar_dmac*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct rcar_dmac *dmac)
{
	u16 dmaor;

	/* Clear all channels and enable the DMAC globally. */
	FUNC2(dmac, RCAR_DMACHCLR, dmac->channels_mask);
	FUNC2(dmac, RCAR_DMAOR,
			RCAR_DMAOR_PRI_FIXED | RCAR_DMAOR_DME);

	dmaor = FUNC1(dmac, RCAR_DMAOR);
	if ((dmaor & (RCAR_DMAOR_AE | RCAR_DMAOR_DME)) != RCAR_DMAOR_DME) {
		FUNC0(dmac->dev, "DMAOR initialization failed.\n");
		return -EIO;
	}

	return 0;
}