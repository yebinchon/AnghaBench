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
struct pk_device {struct pcmidi_snd* pm; } ;
struct pcmidi_snd {int ifnum; } ;
struct hid_usage {int hid; } ;
struct hid_input {int /*<<< orphan*/  input; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int HID_UP_MSVENDOR ; 
 int HID_USAGE_PAGE ; 
 struct pk_device* FUNC0 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmidi_snd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct hid_device *hdev, struct hid_input *hi,
		struct hid_field *field, struct hid_usage *usage,
		unsigned long **bit, int *max)
{
	struct pk_device *pk = FUNC0(hdev);
	struct pcmidi_snd *pm;

	pm = pk->pm;

	if (HID_UP_MSVENDOR == (usage->hid & HID_USAGE_PAGE) &&
		1 == pm->ifnum) {
		FUNC1(pm, hi->input);
		return 0;
	}

	return 0;
}