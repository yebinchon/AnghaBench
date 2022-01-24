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
struct input_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  IOMD_MOUSEX ; 
 int /*<<< orphan*/  IOMD_MOUSEY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,short) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,short) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 short rpcmouse_lastx ; 
 short rpcmouse_lasty ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct input_dev *dev = dev_id;
	short x, y, dx, dy, b;

	x = (short) FUNC5(IOMD_MOUSEX);
	y = (short) FUNC5(IOMD_MOUSEY);
	b = (short) (FUNC1(FUNC0(0xe0310000)) ^ 0x70);

	dx = x - rpcmouse_lastx;
	dy = y - rpcmouse_lasty;

	rpcmouse_lastx = x;
	rpcmouse_lasty = y;

	FUNC3(dev, REL_X, dx);
	FUNC3(dev, REL_Y, -dy);

	FUNC2(dev, BTN_LEFT,   b & 0x40);
	FUNC2(dev, BTN_MIDDLE, b & 0x20);
	FUNC2(dev, BTN_RIGHT,  b & 0x10);

	FUNC4(dev);

	return IRQ_HANDLED;
}