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
struct wm831x_ts {int pen_down; int /*<<< orphan*/  pd_data_work; scalar_t__ pressure; int /*<<< orphan*/  pd_irq; struct wm831x* wm831x; } ;
struct wm831x {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  WM831X_INTERRUPT_STATUS_1 ; 
 int WM831X_TCHPD_EINT ; 
 int WM831X_TCH_X_ENA ; 
 int WM831X_TCH_Y_ENA ; 
 int WM831X_TCH_Z_ENA ; 
 int /*<<< orphan*/  WM831X_TOUCH_CONTROL_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wm831x*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *irq_data)
{
	struct wm831x_ts *wm831x_ts = irq_data;
	struct wm831x *wm831x = wm831x_ts->wm831x;
	int ena = 0;

	if (wm831x_ts->pen_down)
		return IRQ_HANDLED;

	FUNC1(wm831x_ts->pd_irq);

	/* Start collecting data */
	if (wm831x_ts->pressure)
		ena |= WM831X_TCH_Z_ENA;

	FUNC3(wm831x, WM831X_TOUCH_CONTROL_1,
			WM831X_TCH_X_ENA | WM831X_TCH_Y_ENA | WM831X_TCH_Z_ENA,
			WM831X_TCH_X_ENA | WM831X_TCH_Y_ENA | ena);

	FUNC3(wm831x, WM831X_INTERRUPT_STATUS_1,
			WM831X_TCHPD_EINT, WM831X_TCHPD_EINT);

	wm831x_ts->pen_down = true;

	/* Switch from pen down to data */
	FUNC0(wm831x->dev, "IRQ PD->DATA\n");
	FUNC2(&wm831x_ts->pd_data_work);

	return IRQ_HANDLED;
}