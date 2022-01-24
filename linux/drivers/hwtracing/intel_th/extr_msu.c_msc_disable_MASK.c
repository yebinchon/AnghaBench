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
struct msc_window {int /*<<< orphan*/  sgt; } ;
struct msc {scalar_t__ mode; int single_wrap; int single_sz; int nr_pages; int orig_addr; int orig_sz; scalar_t__ reg_base; scalar_t__ index; scalar_t__ enabled; int /*<<< orphan*/  mbuf_priv; TYPE_1__* mbuf; int /*<<< orphan*/  thdev; int /*<<< orphan*/  buf_mutex; struct msc_window* cur_win; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ready ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* deactivate ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int MSCSTS_WRAPSTAT ; 
 int MSC_EN ; 
 scalar_t__ MSC_MODE_MULTI ; 
 scalar_t__ MSC_MODE_SINGLE ; 
 int MSUSTS_MSC0BLAST ; 
 int MSUSTS_MSC1BLAST ; 
 int PAGE_SHIFT ; 
 scalar_t__ REG_MSU_MSC0BAR ; 
 scalar_t__ REG_MSU_MSC0CTL ; 
 scalar_t__ REG_MSU_MSC0MWP ; 
 scalar_t__ REG_MSU_MSC0NWSA ; 
 scalar_t__ REG_MSU_MSC0SIZE ; 
 scalar_t__ REG_MSU_MSC0STS ; 
 scalar_t__ REG_MSU_MSUSTS ; 
 int /*<<< orphan*/  WIN_INUSE ; 
 int /*<<< orphan*/  WIN_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct msc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct msc*) ; 
 int /*<<< orphan*/  FUNC7 (struct msc_window*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct msc_window*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct msc *msc)
{
	struct msc_window *win = msc->cur_win;
	u32 reg;

	FUNC5(&msc->buf_mutex);

	if (msc->mode == MSC_MODE_MULTI)
		FUNC7(win, WIN_INUSE, WIN_LOCKED);

	if (msc->mbuf && msc->mbuf->deactivate)
		msc->mbuf->deactivate(msc->mbuf_priv);
	FUNC1(msc);
	FUNC2(msc->thdev);

	if (msc->mode == MSC_MODE_SINGLE) {
		reg = FUNC3(msc->reg_base + REG_MSU_MSC0STS);
		msc->single_wrap = !!(reg & MSCSTS_WRAPSTAT);

		reg = FUNC3(msc->reg_base + REG_MSU_MSC0MWP);
		msc->single_sz = reg & ((msc->nr_pages << PAGE_SHIFT) - 1);
		FUNC0(FUNC6(msc), "MSCnMWP: %08x/%08lx, wrap: %d\n",
			reg, msc->single_sz, msc->single_wrap);
	}

	reg = FUNC3(msc->reg_base + REG_MSU_MSC0CTL);
	reg &= ~MSC_EN;
	FUNC4(reg, msc->reg_base + REG_MSU_MSC0CTL);

	if (msc->mbuf && msc->mbuf->ready)
		msc->mbuf->ready(msc->mbuf_priv, win->sgt,
				 FUNC8(win));

	msc->enabled = 0;

	FUNC4(msc->orig_addr, msc->reg_base + REG_MSU_MSC0BAR);
	FUNC4(msc->orig_sz, msc->reg_base + REG_MSU_MSC0SIZE);

	FUNC0(FUNC6(msc), "MSCnNWSA: %08x\n",
		FUNC3(msc->reg_base + REG_MSU_MSC0NWSA));

	reg = FUNC3(msc->reg_base + REG_MSU_MSC0STS);
	FUNC0(FUNC6(msc), "MSCnSTS: %08x\n", reg);

	reg = FUNC3(msc->reg_base + REG_MSU_MSUSTS);
	reg &= msc->index ? MSUSTS_MSC1BLAST : MSUSTS_MSC0BLAST;
	FUNC4(reg, msc->reg_base + REG_MSU_MSUSTS);
}