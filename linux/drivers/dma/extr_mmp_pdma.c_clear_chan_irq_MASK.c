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
typedef  int u32 ;
struct mmp_pdma_phy {int base; int idx; TYPE_1__* vchan; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int DCSR ; 
 int DCSR_BUSERR ; 
 int DINT ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct mmp_pdma_phy *phy)
{
	u32 dcsr;
	u32 dint = FUNC2(phy->base + DINT);
	u32 reg = (phy->idx << 2) + DCSR;

	if (!(dint & FUNC0(phy->idx)))
		return -EAGAIN;

	/* clear irq */
	dcsr = FUNC2(phy->base + reg);
	FUNC3(dcsr, phy->base + reg);
	if ((dcsr & DCSR_BUSERR) && (phy->vchan))
		FUNC1(phy->vchan->dev, "DCSR_BUSERR\n");

	return 0;
}