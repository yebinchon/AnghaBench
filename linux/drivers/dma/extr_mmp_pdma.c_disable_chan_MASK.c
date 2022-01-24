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
typedef  scalar_t__ u32 ;
struct mmp_pdma_phy {int idx; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ DCSR ; 
 int DCSR_RUN ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct mmp_pdma_phy *phy)
{
	u32 reg;

	if (!phy)
		return;

	reg = (phy->idx << 2) + DCSR;
	FUNC1(FUNC0(phy->base + reg) & ~DCSR_RUN, phy->base + reg);
}