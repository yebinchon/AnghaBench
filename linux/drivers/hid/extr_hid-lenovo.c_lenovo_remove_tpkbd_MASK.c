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
struct lenovo_drvdata_tpkbd {int /*<<< orphan*/  led_mute; int /*<<< orphan*/  led_micmute; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct hid_device {TYPE_1__ dev; } ;

/* Variables and functions */
 struct lenovo_drvdata_tpkbd* FUNC0 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lenovo_attr_group_tpkbd ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct hid_device *hdev)
{
	struct lenovo_drvdata_tpkbd *data_pointer = FUNC0(hdev);

	/*
	 * Only the trackpoint half of the keyboard has drvdata and stuff that
	 * needs unregistering.
	 */
	if (data_pointer == NULL)
		return;

	FUNC2(&hdev->dev.kobj,
			&lenovo_attr_group_tpkbd);

	FUNC1(&data_pointer->led_micmute);
	FUNC1(&data_pointer->led_mute);
}