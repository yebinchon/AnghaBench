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
struct TYPE_2__ {int /*<<< orphan*/  distance_fuzz; int /*<<< orphan*/  distance_max; } ;
struct wacom_wac {TYPE_1__ features; struct input_dev* pen_input; } ;
struct input_dev {int /*<<< orphan*/  keybit; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_DISTANCE ; 
 int /*<<< orphan*/  BTN_STYLUS ; 
 int /*<<< orphan*/  BTN_STYLUS2 ; 
 int /*<<< orphan*/  BTN_TOOL_PEN ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  MSC_SERIAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct wacom_wac *wacom_wac)
{
	struct input_dev *input_dev = wacom_wac->pen_input;

	FUNC2(input_dev, EV_MSC, MSC_SERIAL);

	FUNC0(BTN_TOOL_PEN, input_dev->keybit);
	FUNC0(BTN_STYLUS, input_dev->keybit);
	FUNC0(BTN_STYLUS2, input_dev->keybit);

	FUNC1(input_dev, ABS_DISTANCE,
			     0, wacom_wac->features.distance_max, wacom_wac->features.distance_fuzz, 0);
}