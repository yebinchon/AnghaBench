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
struct input_dev {int /*<<< orphan*/ * evbit; } ;
struct hid_input {struct input_dev* input; } ;
struct hid_device {int dummy; } ;
struct cmhid {struct input_dev* input_dev; int /*<<< orphan*/  switch_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CM6533_JD_TYPE_COUNT ; 
 int /*<<< orphan*/  EV_SW ; 
 struct cmhid* FUNC1 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * jack_switch_types ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct hid_device *hid,
		struct hid_input *hidinput)
{
	struct input_dev *input_dev = hidinput->input;
	struct cmhid *cm = FUNC1(hid);
	int i;

	cm->input_dev = input_dev;
	FUNC3(cm->switch_map, jack_switch_types, sizeof(cm->switch_map));
	input_dev->evbit[0] = FUNC0(EV_SW);
	for (i = 0; i < CM6533_JD_TYPE_COUNT; i++)
		FUNC2(cm->input_dev,
				EV_SW, jack_switch_types[i]);
	return 0;
}