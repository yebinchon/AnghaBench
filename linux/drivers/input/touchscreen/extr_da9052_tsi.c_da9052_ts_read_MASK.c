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
typedef  int u8 ;
typedef  int u16 ;
struct input_dev {int dummy; } ;
struct da9052_tsi {int /*<<< orphan*/  da9052; struct input_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  DA9052_TSI_LSB_REG ; 
 int /*<<< orphan*/  DA9052_TSI_X_MSB_REG ; 
 int /*<<< orphan*/  DA9052_TSI_Y_MSB_REG ; 
 int /*<<< orphan*/  DA9052_TSI_Z_MSB_REG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 

__attribute__((used)) static void FUNC4(struct da9052_tsi *tsi)
{
	struct input_dev *input = tsi->dev;
	int ret;
	u16 x, y, z;
	u8 v;

	ret = FUNC0(tsi->da9052, DA9052_TSI_X_MSB_REG);
	if (ret < 0)
		return;

	x = (u16) ret;

	ret = FUNC0(tsi->da9052, DA9052_TSI_Y_MSB_REG);
	if (ret < 0)
		return;

	y = (u16) ret;

	ret = FUNC0(tsi->da9052, DA9052_TSI_Z_MSB_REG);
	if (ret < 0)
		return;

	z = (u16) ret;

	ret = FUNC0(tsi->da9052, DA9052_TSI_LSB_REG);
	if (ret < 0)
		return;

	v = (u8) ret;

	x = ((x << 2) & 0x3fc) | (v & 0x3);
	y = ((y << 2) & 0x3fc) | ((v & 0xc) >> 2);
	z = ((z << 2) & 0x3fc) | ((v & 0x30) >> 4);

	FUNC2(input, BTN_TOUCH, 1);
	FUNC1(input, ABS_X, x);
	FUNC1(input, ABS_Y, y);
	FUNC1(input, ABS_PRESSURE, z);
	FUNC3(input);
}