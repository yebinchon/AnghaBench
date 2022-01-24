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
typedef  int u16 ;
struct wm97xx {int pen_probably_down; int /*<<< orphan*/  dev; TYPE_1__* mach_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* post_sample ) (int) ;int /*<<< orphan*/  (* pre_sample ) (int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_LINK_FRAME ; 
 int /*<<< orphan*/  AC97_WM9713_DIG1 ; 
 int /*<<< orphan*/  AC97_WM97XX_DIGITISER_RD ; 
 int RC_PENUP ; 
 int RC_VALID ; 
 int WM9713_ADCSEL_MASK ; 
 int WM9713_POLL ; 
 int WM97XX_ADCSEL_MASK ; 
 int WM97XX_PEN_DOWN ; 
 int delay ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (struct wm97xx*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct wm97xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wm97xx*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct wm97xx *wm, int adcsel, int *sample)
{
	u16 dig1;
	int timeout = 5 * delay;
	bool wants_pen = adcsel & WM97XX_PEN_DOWN;

	if (wants_pen && !wm->pen_probably_down) {
		u16 data = FUNC6(wm, AC97_WM97XX_DIGITISER_RD);
		if (!(data & WM97XX_PEN_DOWN))
			return RC_PENUP;
		wm->pen_probably_down = 1;
	}

	/* set up digitiser */
	dig1 = FUNC6(wm, AC97_WM9713_DIG1);
	dig1 &= ~WM9713_ADCSEL_MASK;
	/* WM97XX_ADCSEL_* channels need to be converted to WM9713 format */
	dig1 |= 1 << ((adcsel & WM97XX_ADCSEL_MASK) >> 12);

	if (wm->mach_ops && wm->mach_ops->pre_sample)
		wm->mach_ops->pre_sample(adcsel);
	FUNC7(wm, AC97_WM9713_DIG1, dig1 | WM9713_POLL);

	/* wait 3 AC97 time slots + delay for conversion */
	FUNC2(delay);

	/* wait for POLL to go low */
	while ((FUNC6(wm, AC97_WM9713_DIG1) & WM9713_POLL) &&
		timeout) {
		FUNC5(AC97_LINK_FRAME);
		timeout--;
	}

	if (timeout <= 0) {
		/* If PDEN is set, we can get a timeout when pen goes up */
		if (FUNC1(wm))
			wm->pen_probably_down = 0;
		else
			FUNC0(wm->dev, "adc sample timeout");
		return RC_PENUP;
	}

	*sample = FUNC6(wm, AC97_WM97XX_DIGITISER_RD);
	if (wm->mach_ops && wm->mach_ops->post_sample)
		wm->mach_ops->post_sample(adcsel);

	/* check we have correct sample */
	if ((*sample ^ adcsel) & WM97XX_ADCSEL_MASK) {
		FUNC0(wm->dev, "adc wrong sample, wanted %x got %x",
			adcsel & WM97XX_ADCSEL_MASK,
			*sample & WM97XX_ADCSEL_MASK);
		return RC_PENUP;
	}

	if (wants_pen && !(*sample & WM97XX_PEN_DOWN)) {
		wm->pen_probably_down = 0;
		return RC_PENUP;
	}

	return RC_VALID;
}