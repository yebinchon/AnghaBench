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
struct timer_list {int dummy; } ;
struct tgfx {int sticks; int /*<<< orphan*/  timer; TYPE_1__* pd; struct input_dev** dev; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_THUMB ; 
 int /*<<< orphan*/  BTN_THUMB2 ; 
 int /*<<< orphan*/  BTN_TOP ; 
 int /*<<< orphan*/  BTN_TOP2 ; 
 int /*<<< orphan*/  BTN_TRIGGER ; 
 int TGFX_DOWN ; 
 int TGFX_LEFT ; 
 scalar_t__ TGFX_REFRESH_TIME ; 
 int TGFX_RIGHT ; 
 int TGFX_THUMB ; 
 int TGFX_THUMB2 ; 
 int TGFX_TOP ; 
 int TGFX_TOP2 ; 
 int TGFX_TRIGGER ; 
 int TGFX_UP ; 
 struct tgfx* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 struct tgfx* tgfx ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC8(struct timer_list *t)
{
	struct tgfx *tgfx = FUNC0(tgfx, t, timer);
	struct input_dev *dev;
	int data1, data2, i;

	for (i = 0; i < 7; i++)
		if (tgfx->sticks & (1 << i)) {

			dev = tgfx->dev[i];

			FUNC7(tgfx->pd->port, ~(1 << i));
			data1 = FUNC6(tgfx->pd->port) ^ 0x7f;
			data2 = FUNC5(tgfx->pd->port) ^ 0x04;	/* CAVEAT parport */

			FUNC1(dev, ABS_X, !!(data1 & TGFX_RIGHT) - !!(data1 & TGFX_LEFT));
			FUNC1(dev, ABS_Y, !!(data1 & TGFX_DOWN ) - !!(data1 & TGFX_UP  ));

			FUNC2(dev, BTN_TRIGGER, (data1 & TGFX_TRIGGER));
			FUNC2(dev, BTN_THUMB,   (data2 & TGFX_THUMB  ));
			FUNC2(dev, BTN_THUMB2,  (data2 & TGFX_THUMB2 ));
			FUNC2(dev, BTN_TOP,     (data2 & TGFX_TOP    ));
			FUNC2(dev, BTN_TOP2,    (data2 & TGFX_TOP2   ));

			FUNC3(dev);
		}

	FUNC4(&tgfx->timer, jiffies + TGFX_REFRESH_TIME);
}