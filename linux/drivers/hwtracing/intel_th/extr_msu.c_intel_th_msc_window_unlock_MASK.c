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
struct sg_table {int dummy; } ;
struct msc_window {int dummy; } ;
struct msc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WIN_LOCKED ; 
 int /*<<< orphan*/  WIN_READY ; 
 struct msc* FUNC0 (struct device*) ; 
 struct msc_window* FUNC1 (struct msc*,struct sg_table*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct msc_window*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct device *dev, struct sg_table *sgt)
{
	struct msc *msc = FUNC0(dev);
	struct msc_window *win;

	if (!sgt)
		return;

	win = FUNC1(msc, sgt, false);
	if (!win)
		return;

	FUNC2(win, WIN_LOCKED, WIN_READY);
}