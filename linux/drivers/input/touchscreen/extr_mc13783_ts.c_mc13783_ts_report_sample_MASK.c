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
struct mc13783_ts_priv {int* sample; int /*<<< orphan*/  work; struct input_dev* idev; } ;
struct input_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int sample_tolerance ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 

__attribute__((used)) static void FUNC6(struct mc13783_ts_priv *priv)
{
	struct input_dev *idev = priv->idev;
	int x0, x1, x2, y0, y1, y2;
	int cr0, cr1;

	/*
	 * the values are 10-bit wide only, but the two least significant
	 * bits are for future 12 bit use and reading yields 0
	 */
	x0 = priv->sample[0] & 0xfff;
	x1 = priv->sample[1] & 0xfff;
	x2 = priv->sample[2] & 0xfff;
	y0 = priv->sample[3] & 0xfff;
	y1 = (priv->sample[0] >> 12) & 0xfff;
	y2 = (priv->sample[1] >> 12) & 0xfff;
	cr0 = (priv->sample[2] >> 12) & 0xfff;
	cr1 = (priv->sample[3] >> 12) & 0xfff;

	FUNC0(&idev->dev,
		"x: (% 4d,% 4d,% 4d) y: (% 4d, % 4d,% 4d) cr: (% 4d, % 4d)\n",
		x0, x1, x2, y0, y1, y2, cr0, cr1);

	FUNC5(x0, x1, x2);
	FUNC5(y0, y1, y2);

	cr0 = (cr0 + cr1) / 2;

	if (!cr0 || !sample_tolerance ||
			(x2 - x0 < sample_tolerance &&
			 y2 - y0 < sample_tolerance)) {
		/* report the median coordinate and average pressure */
		if (cr0) {
			FUNC1(idev, ABS_X, x1);
			FUNC1(idev, ABS_Y, y1);

			FUNC0(&idev->dev, "report (%d, %d, %d)\n",
					x1, y1, 0x1000 - cr0);
			FUNC4(&priv->work, HZ / 50);
		} else {
			FUNC0(&idev->dev, "report release\n");
		}

		FUNC1(idev, ABS_PRESSURE,
				cr0 ? 0x1000 - cr0 : cr0);
		FUNC2(idev, BTN_TOUCH, cr0);
		FUNC3(idev);
	} else {
		FUNC0(&idev->dev, "discard event\n");
	}
}