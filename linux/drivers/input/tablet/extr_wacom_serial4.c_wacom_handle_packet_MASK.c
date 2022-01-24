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
typedef  int u8 ;
struct wacom {int* data; int extra_z_bits; int eraser_mask; unsigned int tool; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int device_id; int /*<<< orphan*/  input_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MISC ; 
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  BTN_STYLUS ; 
 int /*<<< orphan*/  BTN_STYLUS2 ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 unsigned int CURSOR ; 
 unsigned int ERASER ; 
 int /*<<< orphan*/  REL_WHEEL ; 
 unsigned int STYLUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* tools ; 

__attribute__((used)) static void FUNC4(struct wacom *wacom)
{
	u8 in_proximity_p, stylus_p, button;
	unsigned int tool;
	int x, y, z;

	in_proximity_p = wacom->data[0] & 0x40;
	stylus_p = wacom->data[0] & 0x20;
	button = (wacom->data[3] & 0x78) >> 3;
	x = (wacom->data[0] & 3) << 14 | wacom->data[1]<<7 | wacom->data[2];
	y = (wacom->data[3] & 3) << 14 | wacom->data[4]<<7 | wacom->data[5];

	if (in_proximity_p && stylus_p) {
		z = wacom->data[6] & 0x7f;
		if (wacom->extra_z_bits >= 1)
			z = z << 1 | (wacom->data[3] & 0x4) >> 2;
		if (wacom->extra_z_bits > 1)
			z = z << 1 | (wacom->data[0] & 0x4) >> 2;
		z = z ^ (0x40 << wacom->extra_z_bits);
	} else {
		z = -1;
	}

	if (stylus_p)
		tool = (button & wacom->eraser_mask) ? ERASER : STYLUS;
	else
		tool = CURSOR;

	if (tool != wacom->tool && wacom->tool != 0) {
		FUNC1(wacom->dev, tools[wacom->tool].input_id, 0);
		FUNC3(wacom->dev);
	}
	wacom->tool = tool;

	FUNC1(wacom->dev, tools[tool].input_id, in_proximity_p);
	FUNC0(wacom->dev, ABS_MISC,
			 in_proximity_p ? tools[tool].device_id : 0);
	FUNC0(wacom->dev, ABS_X, x);
	FUNC0(wacom->dev, ABS_Y, y);
	FUNC0(wacom->dev, ABS_PRESSURE, z);
	if (stylus_p) {
		FUNC1(wacom->dev, BTN_TOUCH, button & 1);
		FUNC1(wacom->dev, BTN_STYLUS, button & 2);
		FUNC1(wacom->dev, BTN_STYLUS2, button & 4);
	} else {
		FUNC1(wacom->dev, BTN_LEFT, button & 1);
		FUNC1(wacom->dev, BTN_RIGHT, button & 2);
		FUNC1(wacom->dev, BTN_MIDDLE, button & 4);
		/* handle relative wheel for non-stylus device */
		z = (wacom->data[6] & 0x30) >> 4;
		if (wacom->data[6] & 0x40)
			z = -z;
		FUNC2(wacom->dev, REL_WHEEL, z);
	}
	FUNC3(wacom->dev);
}