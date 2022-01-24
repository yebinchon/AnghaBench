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
struct mxt_data {int t19_num_keys; scalar_t__* t19_keymap; } ;
struct input_dev {char* name; int /*<<< orphan*/  propbit; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  INPUT_PROP_BUTTONPAD ; 
 scalar_t__ KEY_RESERVED ; 
 int /*<<< orphan*/  MXT_PIXELS_PER_MM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct input_dev *input_dev,
				   struct mxt_data *data)
{
	int i;

	input_dev->name = "Atmel maXTouch Touchpad";

	FUNC0(INPUT_PROP_BUTTONPAD, input_dev->propbit);

	FUNC1(input_dev, ABS_X, MXT_PIXELS_PER_MM);
	FUNC1(input_dev, ABS_Y, MXT_PIXELS_PER_MM);
	FUNC1(input_dev, ABS_MT_POSITION_X,
			  MXT_PIXELS_PER_MM);
	FUNC1(input_dev, ABS_MT_POSITION_Y,
			  MXT_PIXELS_PER_MM);

	for (i = 0; i < data->t19_num_keys; i++)
		if (data->t19_keymap[i] != KEY_RESERVED)
			FUNC2(input_dev, EV_KEY,
					     data->t19_keymap[i]);
}