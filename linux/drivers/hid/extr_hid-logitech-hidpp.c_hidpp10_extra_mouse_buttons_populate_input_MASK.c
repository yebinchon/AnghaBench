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
struct input_dev {int /*<<< orphan*/  keybit; } ;
struct hidpp_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_0 ; 
 int /*<<< orphan*/  BTN_1 ; 
 int /*<<< orphan*/  BTN_2 ; 
 int /*<<< orphan*/  BTN_3 ; 
 int /*<<< orphan*/  BTN_4 ; 
 int /*<<< orphan*/  BTN_5 ; 
 int /*<<< orphan*/  BTN_6 ; 
 int /*<<< orphan*/  BTN_7 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(
			struct hidpp_device *hidpp, struct input_dev *input_dev)
{
	/* BTN_MOUSE - BTN_MOUSE+7 are set already by the descriptor */
	FUNC0(BTN_0, input_dev->keybit);
	FUNC0(BTN_1, input_dev->keybit);
	FUNC0(BTN_2, input_dev->keybit);
	FUNC0(BTN_3, input_dev->keybit);
	FUNC0(BTN_4, input_dev->keybit);
	FUNC0(BTN_5, input_dev->keybit);
	FUNC0(BTN_6, input_dev->keybit);
	FUNC0(BTN_7, input_dev->keybit);
}