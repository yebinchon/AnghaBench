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
struct wm831x_ts {int pen_down; int /*<<< orphan*/  pd_irq; int /*<<< orphan*/  data_irq; int /*<<< orphan*/  pd_data_work; struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int WM831X_TCH_ENA ; 
 int WM831X_TCH_X_ENA ; 
 int WM831X_TCH_Y_ENA ; 
 int WM831X_TCH_Z_ENA ; 
 int /*<<< orphan*/  WM831X_TOUCH_CONTROL_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct wm831x_ts* FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wm831x*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct input_dev *idev)
{
	struct wm831x_ts *wm831x_ts = FUNC3(idev);
	struct wm831x *wm831x = wm831x_ts->wm831x;

	/* Shut the controller down, disabling all other functionality too */
	FUNC5(wm831x, WM831X_TOUCH_CONTROL_1,
			WM831X_TCH_ENA | WM831X_TCH_X_ENA |
			WM831X_TCH_Y_ENA | WM831X_TCH_Z_ENA, 0);

	/* Make sure any pending IRQs are done, the above will prevent
	 * new ones firing.
	 */
	FUNC4(wm831x_ts->data_irq);
	FUNC4(wm831x_ts->pd_irq);

	/* Make sure the IRQ completion work is quiesced */
	FUNC2(&wm831x_ts->pd_data_work);

	/* If we ended up with the pen down then make sure we revert back
	 * to pen detection state for the next time we start up.
	 */
	if (wm831x_ts->pen_down) {
		FUNC0(wm831x_ts->data_irq);
		FUNC1(wm831x_ts->pd_irq);
		wm831x_ts->pen_down = false;
	}
}