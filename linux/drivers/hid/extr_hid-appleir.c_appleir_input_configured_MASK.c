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
struct input_dev {int keycodesize; int keycodemax; int* evbit; int /*<<< orphan*/  keybit; int /*<<< orphan*/ * keycode; } ;
struct hid_input {struct input_dev* input; } ;
struct hid_device {int dummy; } ;
struct appleir {int /*<<< orphan*/ * keymap; struct input_dev* input_dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  KEY_RESERVED ; 
 int /*<<< orphan*/ * appleir_key_table ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct appleir* FUNC3 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hid_device *hid,
		struct hid_input *hidinput)
{
	struct input_dev *input_dev = hidinput->input;
	struct appleir *appleir = FUNC3(hid);
	int i;

	appleir->input_dev = input_dev;

	input_dev->keycode = appleir->keymap;
	input_dev->keycodesize = sizeof(unsigned short);
	input_dev->keycodemax = FUNC0(appleir->keymap);

	input_dev->evbit[0] = FUNC1(EV_KEY) | FUNC1(EV_REP);

	FUNC4(appleir->keymap, appleir_key_table, sizeof(appleir->keymap));
	for (i = 0; i < FUNC0(appleir_key_table); i++)
		FUNC5(appleir->keymap[i], input_dev->keybit);
	FUNC2(KEY_RESERVED, input_dev->keybit);

	return 0;
}