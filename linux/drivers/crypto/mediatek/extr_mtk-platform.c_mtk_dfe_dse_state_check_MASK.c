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
typedef  int /*<<< orphan*/  u32 ;
struct mtk_cryp {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ DFE_THR_CTRL ; 
 scalar_t__ DFE_THR_STAT ; 
 scalar_t__ DSE_THR_CTRL ; 
 scalar_t__ DSE_THR_STAT ; 
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ MTK_DFSE_IDLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct mtk_cryp *cryp)
{
	int ret = -EINVAL;
	u32 val;

	/* Check for completion of all DMA transfers */
	val = FUNC1(cryp->base + DFE_THR_STAT);
	if (FUNC0(val) == MTK_DFSE_IDLE) {
		val = FUNC1(cryp->base + DSE_THR_STAT);
		if (FUNC0(val) == MTK_DFSE_IDLE)
			ret = 0;
	}

	if (!ret) {
		/* Take DFE/DSE thread out of reset */
		FUNC2(0, cryp->base + DFE_THR_CTRL);
		FUNC2(0, cryp->base + DSE_THR_CTRL);
	} else {
		return -EBUSY;
	}

	return 0;
}