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
struct msc {scalar_t__ msu_base; scalar_t__ do_irq; scalar_t__ index; int /*<<< orphan*/  mbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  M0BLIE ; 
 int /*<<< orphan*/  M1BLIE ; 
 scalar_t__ REG_MSU_MINTCTL ; 
 scalar_t__ REG_MSU_MSUSTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct msc*) ; 

__attribute__((used)) static int FUNC4(struct msc *msc)
{
	u32 mintctl, msusts;

	if (!msc->do_irq)
		return 0;

	if (!msc->mbuf)
		return 0;

	mintctl = FUNC1(msc->msu_base + REG_MSU_MINTCTL);
	mintctl |= msc->index ? M1BLIE : M0BLIE;
	FUNC2(mintctl, msc->msu_base + REG_MSU_MINTCTL);
	if (mintctl != FUNC1(msc->msu_base + REG_MSU_MINTCTL)) {
		FUNC0(FUNC3(msc), "MINTCTL ignores writes: no usable interrupts\n");
		msc->do_irq = 0;
		return 0;
	}

	msusts = FUNC1(msc->msu_base + REG_MSU_MSUSTS);
	FUNC2(msusts, msc->msu_base + REG_MSU_MSUSTS);

	return 0;
}