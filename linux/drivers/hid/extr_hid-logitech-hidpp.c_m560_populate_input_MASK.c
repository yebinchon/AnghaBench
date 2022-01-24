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
struct input_dev {int /*<<< orphan*/  relbit; int /*<<< orphan*/  evbit; int /*<<< orphan*/  keybit; } ;
struct hidpp_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_BACK ; 
 int /*<<< orphan*/  BTN_FORWARD ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_REL ; 
 int /*<<< orphan*/  REL_HWHEEL ; 
 int /*<<< orphan*/  REL_HWHEEL_HI_RES ; 
 int /*<<< orphan*/  REL_WHEEL ; 
 int /*<<< orphan*/  REL_WHEEL_HI_RES ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct hidpp_device *hidpp,
				struct input_dev *input_dev)
{
	FUNC0(EV_KEY, input_dev->evbit);
	FUNC0(BTN_MIDDLE, input_dev->keybit);
	FUNC0(BTN_RIGHT, input_dev->keybit);
	FUNC0(BTN_LEFT, input_dev->keybit);
	FUNC0(BTN_BACK, input_dev->keybit);
	FUNC0(BTN_FORWARD, input_dev->keybit);

	FUNC0(EV_REL, input_dev->evbit);
	FUNC0(REL_X, input_dev->relbit);
	FUNC0(REL_Y, input_dev->relbit);
	FUNC0(REL_WHEEL, input_dev->relbit);
	FUNC0(REL_HWHEEL, input_dev->relbit);
	FUNC0(REL_WHEEL_HI_RES, input_dev->relbit);
	FUNC0(REL_HWHEEL_HI_RES, input_dev->relbit);
}