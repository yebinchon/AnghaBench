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
struct msc_window {int /*<<< orphan*/  sgt; int /*<<< orphan*/  entry; scalar_t__ nr_blocks; } ;
struct msc {int /*<<< orphan*/  mbuf_priv; TYPE_1__* mbuf; scalar_t__ base_addr; int /*<<< orphan*/ * base; int /*<<< orphan*/  win_list; int /*<<< orphan*/  nr_pages; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* free_window ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct msc*,struct msc_window*) ; 
 int /*<<< orphan*/  FUNC1 (struct msc_window*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct msc_window*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct msc *msc, struct msc_window *win)
{
	msc->nr_pages -= win->nr_blocks;

	FUNC2(&win->entry);
	if (FUNC3(&msc->win_list)) {
		msc->base = NULL;
		msc->base_addr = 0;
	}

	FUNC4(win);

	if (msc->mbuf && msc->mbuf->free_window)
		msc->mbuf->free_window(msc->mbuf_priv, win->sgt);
	else
		FUNC0(msc, win);

	FUNC1(win);
}