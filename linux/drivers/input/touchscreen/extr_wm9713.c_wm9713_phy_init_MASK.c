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
typedef  int u16 ;
struct wm97xx {int /*<<< orphan*/  misc; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_GPIO_STICKY ; 
 int /*<<< orphan*/  AC97_WM9713_DIG1 ; 
 int /*<<< orphan*/  AC97_WM9713_DIG2 ; 
 int /*<<< orphan*/  AC97_WM9713_DIG3 ; 
 int WM9712_PIL ; 
 int FUNC0 (int) ; 
 int WM9713_45W ; 
 int WM9713_WAIT ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ coord ; 
 int delay ; 
 int* delay_table ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ five_wire ; 
 int mask ; 
 int pil ; 
 scalar_t__ pressure ; 
 int rpu ; 
 int /*<<< orphan*/  FUNC5 (struct wm97xx*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wm97xx*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct wm97xx *wm)
{
	u16 dig1 = 0, dig2, dig3;

	/* default values */
	dig2 = FUNC1(4) | FUNC2(5);
	dig3 = FUNC0(1);

	/* rpu */
	if (rpu) {
		dig3 &= 0xffc0;
		dig3 |= FUNC0(rpu);
		FUNC3(wm->dev, "setting pen detect pull-up to %d Ohms\n",
			 64000 / rpu);
	}

	/* Five wire panel? */
	if (five_wire) {
		dig3 |= WM9713_45W;
		FUNC3(wm->dev, "setting 5-wire touchscreen mode.");

		if (pil) {
			FUNC4(wm->dev,
				 "Pressure measurement not supported in 5 "
				 "wire mode, disabling\n");
			pil = 0;
		}
	}

	/* touchpanel pressure */
	if (pil == 2) {
		dig3 |= WM9712_PIL;
		FUNC3(wm->dev,
			 "setting pressure measurement current to 400uA.");
	} else if (pil)
		FUNC3(wm->dev,
			 "setting pressure measurement current to 200uA.");
	if (!pil)
		pressure = 0;

	/* sample settling delay */
	if (delay < 0 || delay > 15) {
		FUNC3(wm->dev, "supplied delay out of range.");
		delay = 4;
		FUNC3(wm->dev, "setting adc sample delay to %d u Secs.",
			 delay_table[delay]);
	}
	dig2 &= 0xff0f;
	dig2 |= FUNC1(delay);

	/* mask */
	dig3 |= ((mask & 0x3) << 4);
	if (coord)
		dig3 |= WM9713_WAIT;

	wm->misc = FUNC5(wm, 0x5a);

	FUNC6(wm, AC97_WM9713_DIG1, dig1);
	FUNC6(wm, AC97_WM9713_DIG2, dig2);
	FUNC6(wm, AC97_WM9713_DIG3, dig3);
	FUNC6(wm, AC97_GPIO_STICKY, 0x0);
}