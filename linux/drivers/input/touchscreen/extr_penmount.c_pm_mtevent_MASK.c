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
struct pm {int maxcontacts; TYPE_1__* slots; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; scalar_t__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 

__attribute__((used)) static void FUNC5(struct pm *pm, struct input_dev *input)
{
	int i;

	for (i = 0; i < pm->maxcontacts; ++i) {
		FUNC3(input, i);
		FUNC2(input, MT_TOOL_FINGER,
				pm->slots[i].active);
		if (pm->slots[i].active) {
			FUNC0(input, EV_ABS, ABS_MT_POSITION_X, pm->slots[i].x);
			FUNC0(input, EV_ABS, ABS_MT_POSITION_Y, pm->slots[i].y);
		}
	}

	FUNC1(input, true);
	FUNC4(input);
}