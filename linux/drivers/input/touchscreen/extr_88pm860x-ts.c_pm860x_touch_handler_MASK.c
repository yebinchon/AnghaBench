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
struct pm860x_touch {int res_x; int /*<<< orphan*/  idev; int /*<<< orphan*/  i2c; struct pm860x_chip* chip; } ;
struct pm860x_chip {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int ACCURATE_BIT ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int MEAS_LEN ; 
 int /*<<< orphan*/  MEAS_TSIX_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned char*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct pm860x_touch *touch = data;
	struct pm860x_chip *chip = touch->chip;
	unsigned char buf[MEAS_LEN];
	int x, y, pen_down;
	int z1, z2, rt = 0;
	int ret;

	ret = FUNC4(touch->i2c, MEAS_TSIX_1, MEAS_LEN, buf);
	if (ret < 0)
		goto out;

	pen_down = buf[1] & (1 << 6);
	x = ((buf[0] & 0xFF) << 4) | (buf[1] & 0x0F);
	y = ((buf[2] & 0xFF) << 4) | (buf[3] & 0x0F);
	z1 = ((buf[4] & 0xFF) << 4) | (buf[5] & 0x0F);
	z2 = ((buf[6] & 0xFF) << 4) | (buf[7] & 0x0F);

	if (pen_down) {
		if ((x != 0) && (z1 != 0) && (touch->res_x != 0)) {
			rt = z2 / z1 - 1;
			rt = (rt * touch->res_x * x) >> ACCURATE_BIT;
			FUNC0(chip->dev, "z1:%d, z2:%d, rt:%d\n",
				z1, z2, rt);
		}
		FUNC1(touch->idev, ABS_X, x);
		FUNC1(touch->idev, ABS_Y, y);
		FUNC1(touch->idev, ABS_PRESSURE, rt);
		FUNC2(touch->idev, BTN_TOUCH, 1);
		FUNC0(chip->dev, "pen down at [%d, %d].\n", x, y);
	} else {
		FUNC1(touch->idev, ABS_PRESSURE, 0);
		FUNC2(touch->idev, BTN_TOUCH, 0);
		FUNC0(chip->dev, "pen release\n");
	}
	FUNC3(touch->idev);

out:
	return IRQ_HANDLED;
}