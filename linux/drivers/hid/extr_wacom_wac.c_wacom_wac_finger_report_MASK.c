#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hid_data {scalar_t__ num_received; scalar_t__ num_expected; } ;
struct TYPE_3__ {unsigned int touch_max; } ;
struct wacom_wac {TYPE_2__* shared; struct hid_data hid_data; TYPE_1__ features; struct input_dev* touch_input; } ;
struct wacom {struct wacom_wac wacom_wac; } ;
struct input_dev {int dummy; } ;
struct hid_report {int dummy; } ;
struct hid_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  touch_down; } ;

/* Variables and functions */
 struct wacom* FUNC0 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct wacom_wac*) ; 

__attribute__((used)) static void FUNC4(struct hid_device *hdev,
		struct hid_report *report)
{
	struct wacom *wacom = FUNC0(hdev);
	struct wacom_wac *wacom_wac = &wacom->wacom_wac;
	struct input_dev *input = wacom_wac->touch_input;
	unsigned touch_max = wacom_wac->features.touch_max;
	struct hid_data *hid_data = &wacom_wac->hid_data;

	/* If more packets of data are expected, give us a chance to
	 * process them rather than immediately syncing a partial
	 * update.
	 */
	if (wacom_wac->hid_data.num_received < wacom_wac->hid_data.num_expected)
		return;

	if (touch_max > 1)
		FUNC1(input);

	FUNC2(input);
	wacom_wac->hid_data.num_received = 0;
	hid_data->num_expected = 0;

	/* keep touch state for pen event */
	wacom_wac->shared->touch_down = FUNC3(wacom_wac);
}