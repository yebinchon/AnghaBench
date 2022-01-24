#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wm97xx {scalar_t__ id; int /*<<< orphan*/  dev; int /*<<< orphan*/  pen_irq; int /*<<< orphan*/  variant; int /*<<< orphan*/  acc_slot; int /*<<< orphan*/  acc_rate; int /*<<< orphan*/ * ac97; } ;
struct TYPE_3__ {scalar_t__ id; scalar_t__ speed; int /*<<< orphan*/  code; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_BOTH ; 
#define  WM9705_ID2 130 
#define  WM9712_ID2 129 
#define  WM9713_ID2 128 
 int /*<<< orphan*/  WM97XX_GPIO_13 ; 
 int /*<<< orphan*/  WM97XX_GPIO_2 ; 
 int /*<<< orphan*/  WM97XX_GPIO_IN ; 
 int /*<<< orphan*/  WM97XX_GPIO_NOTSTICKY ; 
 int /*<<< orphan*/  WM97XX_GPIO_NOWAKE ; 
 int /*<<< orphan*/  WM97XX_GPIO_OUT ; 
 int /*<<< orphan*/  WM97XX_GPIO_POL_HIGH ; 
 int /*<<< orphan*/  WM97XX_GPIO_STICKY ; 
 int /*<<< orphan*/  WM97XX_GPIO_WAKE ; 
 int /*<<< orphan*/  WM97xx_WM1613 ; 
 int /*<<< orphan*/  ac97_touch_slot ; 
 TYPE_1__* cinfo ; 
 scalar_t__ cont_rate ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int irq ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 int pen_int ; 
 size_t sp_idx ; 
 int /*<<< orphan*/  FUNC12 (struct wm97xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct wm97xx *wm)
{
	int idx = 0, ret = 0;

	/* check we have a codec */
	if (wm->ac97 == NULL)
		return -ENODEV;

	/* Go you big red fire engine */
	for (idx = 0; idx < FUNC0(cinfo); idx++) {
		if (wm->id != cinfo[idx].id)
			continue;
		sp_idx = idx;
		if (cont_rate <= cinfo[idx].speed)
			break;
	}
	wm->acc_rate = cinfo[sp_idx].code;
	wm->acc_slot = ac97_touch_slot;
	FUNC2(wm->dev,
		 "mainstone accelerated touchscreen driver, %d samples/sec\n",
		 cinfo[sp_idx].speed);

	/* IRQ driven touchscreen is used on Palm hardware */
	if (FUNC10() || FUNC11() || FUNC9()) {
		pen_int = 1;
		irq = 27;
		/* There is some obscure mutant of WM9712 interbred with WM9713
		 * used on Palm HW */
		wm->variant = WM97xx_WM1613;
	} else if (FUNC8() && pen_int)
		irq = 4;

	if (irq) {
		ret = FUNC5(irq, "Touchscreen IRQ");
		if (ret)
			goto out;

		ret = FUNC3(irq);
		if (ret) {
			FUNC4(irq);
			goto out;
		}

		wm->pen_irq = FUNC6(irq);
		FUNC7(wm->pen_irq, IRQ_TYPE_EDGE_BOTH);
	} else /* pen irq not supported */
		pen_int = 0;

	/* codec specific irq config */
	if (pen_int) {
		switch (wm->id) {
		case WM9705_ID2:
			break;
		case WM9712_ID2:
		case WM9713_ID2:
			/* use PEN_DOWN GPIO 13 to assert IRQ on GPIO line 2 */
			FUNC12(wm, WM97XX_GPIO_13, WM97XX_GPIO_IN,
					   WM97XX_GPIO_POL_HIGH,
					   WM97XX_GPIO_STICKY,
					   WM97XX_GPIO_WAKE);
			FUNC12(wm, WM97XX_GPIO_2, WM97XX_GPIO_OUT,
					   WM97XX_GPIO_POL_HIGH,
					   WM97XX_GPIO_NOTSTICKY,
					   WM97XX_GPIO_NOWAKE);
			break;
		default:
			FUNC1(wm->dev,
				"pen down irq not supported on this device\n");
			pen_int = 0;
			break;
		}
	}

out:
	return ret;
}