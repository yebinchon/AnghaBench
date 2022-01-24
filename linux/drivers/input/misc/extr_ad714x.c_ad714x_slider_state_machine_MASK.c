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
struct ad714x_slider_plat {int end_stage; int start_stage; } ;
struct ad714x_slider_drv {int state; int /*<<< orphan*/  input; int /*<<< orphan*/  flt_pos; int /*<<< orphan*/  abs_pos; } ;
struct ad714x_chip {unsigned short h_state; unsigned short c_state; int /*<<< orphan*/  dev; TYPE_2__* sw; TYPE_1__* hw; } ;
struct TYPE_4__ {struct ad714x_slider_drv* slider; } ;
struct TYPE_3__ {struct ad714x_slider_plat* slider; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
#define  ACTIVE 130 
 int /*<<< orphan*/  BTN_TOUCH ; 
#define  IDLE 129 
#define  JITTER 128 
 int /*<<< orphan*/  FUNC0 (struct ad714x_chip*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ad714x_chip*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ad714x_chip*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ad714x_chip*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ad714x_chip*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ad714x_chip*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct ad714x_chip *ad714x, int idx)
{
	struct ad714x_slider_plat *hw = &ad714x->hw->slider[idx];
	struct ad714x_slider_drv *sw = &ad714x->sw->slider[idx];
	unsigned short h_state, c_state;
	unsigned short mask;

	mask = ((1 << (hw->end_stage + 1)) - 1) - ((1 << hw->start_stage) - 1);

	h_state = ad714x->h_state & mask;
	c_state = ad714x->c_state & mask;

	switch (sw->state) {
	case IDLE:
		if (h_state) {
			sw->state = JITTER;
			/* In End of Conversion interrupt mode, the AD714X
			 * continuously generates hardware interrupts.
			 */
			FUNC4(ad714x, idx);
			FUNC6(ad714x->dev, "slider %d touched\n", idx);
		}
		break;

	case JITTER:
		if (c_state == mask) {
			FUNC3(ad714x, idx);
			FUNC2(ad714x, idx);
			FUNC0(ad714x, idx);
			sw->flt_pos = sw->abs_pos;
			sw->state = ACTIVE;
		}
		break;

	case ACTIVE:
		if (c_state == mask) {
			if (h_state) {
				FUNC3(ad714x, idx);
				FUNC2(ad714x, idx);
				FUNC0(ad714x, idx);
				FUNC1(ad714x, idx);
				FUNC7(sw->input, ABS_X, sw->flt_pos);
				FUNC8(sw->input, BTN_TOUCH, 1);
			} else {
				/* When the user lifts off the sensor, configure
				 * the AD714X back to threshold interrupt mode.
				 */
				FUNC5(ad714x, idx);
				sw->state = IDLE;
				FUNC8(sw->input, BTN_TOUCH, 0);
				FUNC6(ad714x->dev, "slider %d released\n",
					idx);
			}
			FUNC9(sw->input);
		}
		break;

	default:
		break;
	}
}