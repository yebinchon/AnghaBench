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
struct w8001_coord {unsigned int x; unsigned int y; scalar_t__ tsw; } ;
struct w8001 {int /*<<< orphan*/  type; struct input_dev* touch_dev; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOOL_FINGER ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  KEY_RESERVED ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct w8001*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static void FUNC4(struct w8001 *w8001, struct w8001_coord *coord)
{
	struct input_dev *dev = w8001->touch_dev;
	unsigned int x = coord->x;
	unsigned int y = coord->y;

	/* scale to pen maximum */
	FUNC3(w8001, &x, &y);

	FUNC0(dev, ABS_X, x);
	FUNC0(dev, ABS_Y, y);
	FUNC1(dev, BTN_TOUCH, coord->tsw);

	FUNC2(dev);

	w8001->type = coord->tsw ? BTN_TOOL_FINGER : KEY_RESERVED;
}