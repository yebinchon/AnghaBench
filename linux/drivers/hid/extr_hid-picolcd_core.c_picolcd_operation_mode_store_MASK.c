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
struct picolcd_data {int opmode_delay; int status; int /*<<< orphan*/  lock; int /*<<< orphan*/  hdev; } ;
struct hid_report {int maxfield; int /*<<< orphan*/ * field; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  HID_REQ_SET_REPORT ; 
 int PICOLCD_BOOTLOADER ; 
 int /*<<< orphan*/  REPORT_EXIT_FLASHER ; 
 int /*<<< orphan*/  REPORT_EXIT_KEYBOARD ; 
 struct picolcd_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct hid_report*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 struct hid_report* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct picolcd_data *data = FUNC0(dev);
	struct hid_report *report = NULL;
	int timeout = data->opmode_delay;
	unsigned long flags;

	if (FUNC6(buf, "lcd")) {
		if (data->status & PICOLCD_BOOTLOADER)
			report = FUNC3(REPORT_EXIT_FLASHER, data->hdev);
	} else if (FUNC6(buf, "bootloader")) {
		if (!(data->status & PICOLCD_BOOTLOADER))
			report = FUNC3(REPORT_EXIT_KEYBOARD, data->hdev);
	} else {
		return -EINVAL;
	}

	if (!report || report->maxfield != 1)
		return -EINVAL;

	FUNC4(&data->lock, flags);
	FUNC2(report->field[0], 0, timeout & 0xff);
	FUNC2(report->field[0], 1, (timeout >> 8) & 0xff);
	FUNC1(data->hdev, report, HID_REQ_SET_REPORT);
	FUNC5(&data->lock, flags);
	return count;
}