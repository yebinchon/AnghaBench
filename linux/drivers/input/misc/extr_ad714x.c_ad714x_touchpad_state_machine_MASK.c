#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ad714x_touchpad_plat {int x_end_stage; int x_start_stage; int y_end_stage; int y_start_stage; } ;
struct ad714x_touchpad_drv {int state; int /*<<< orphan*/  input; int /*<<< orphan*/  y_flt_pos; int /*<<< orphan*/  x_flt_pos; int /*<<< orphan*/  y_abs_pos; int /*<<< orphan*/  x_abs_pos; } ;
struct ad714x_chip {unsigned short h_state; unsigned short c_state; int /*<<< orphan*/  dev; TYPE_2__* sw; TYPE_1__* hw; } ;
struct TYPE_4__ {struct ad714x_touchpad_drv* touchpad; } ;
struct TYPE_3__ {struct ad714x_touchpad_plat* touchpad; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
#define  ACTIVE 130 
 int /*<<< orphan*/  BTN_TOUCH ; 
#define  IDLE 129 
#define  JITTER 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ad714x_chip*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ad714x_chip*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ad714x_chip*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ad714x_chip*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ad714x_chip*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ad714x_chip*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ad714x_chip*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ad714x_chip*,int) ; 

__attribute__((used)) static void FUNC12(struct ad714x_chip *ad714x, int idx)
{
	struct ad714x_touchpad_plat *hw = &ad714x->hw->touchpad[idx];
	struct ad714x_touchpad_drv *sw = &ad714x->sw->touchpad[idx];
	unsigned short h_state, c_state;
	unsigned short mask;

	mask = (((1 << (hw->x_end_stage + 1)) - 1) -
		((1 << hw->x_start_stage) - 1)) +
		(((1 << (hw->y_end_stage + 1)) - 1) -
		((1 << hw->y_start_stage) - 1));

	h_state = ad714x->h_state & mask;
	c_state = ad714x->c_state & mask;

	switch (sw->state) {
	case IDLE:
		if (h_state) {
			sw->state = JITTER;
			/* In End of Conversion interrupt mode, the AD714X
			 * continuously generates hardware interrupts.
			 */
			FUNC10(ad714x, idx);
			FUNC0(ad714x->dev, "touchpad %d touched\n", idx);
		}
		break;

	case JITTER:
		if (c_state == mask) {
			FUNC7(ad714x, idx);
			FUNC6(ad714x, idx);
			if ((!FUNC9(ad714x, idx)) &&
				(!FUNC8(ad714x, idx))) {
				FUNC0(ad714x->dev,
					"touchpad%d, 2 fingers or endpoint\n",
					idx);
				FUNC4(ad714x, idx);
				sw->x_flt_pos = sw->x_abs_pos;
				sw->y_flt_pos = sw->y_abs_pos;
				sw->state = ACTIVE;
			}
		}
		break;

	case ACTIVE:
		if (c_state == mask) {
			if (h_state) {
				FUNC7(ad714x, idx);
				FUNC6(ad714x, idx);
				if ((!FUNC9(ad714x, idx))
				  && (!FUNC8(ad714x, idx))) {
					FUNC4(ad714x, idx);
					FUNC5(ad714x, idx);
					FUNC1(sw->input, ABS_X,
						sw->x_flt_pos);
					FUNC1(sw->input, ABS_Y,
						sw->y_flt_pos);
					FUNC2(sw->input, BTN_TOUCH,
						1);
				}
			} else {
				/* When the user lifts off the sensor, configure
				 * the AD714X back to threshold interrupt mode.
				 */
				FUNC11(ad714x, idx);
				sw->state = IDLE;
				FUNC2(sw->input, BTN_TOUCH, 0);
				FUNC0(ad714x->dev, "touchpad %d released\n",
					idx);
			}
			FUNC3(sw->input);
		}
		break;

	default:
		break;
	}
}