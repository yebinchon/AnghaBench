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
struct picolcd_pending {int raw_size; int /*<<< orphan*/ * raw_data; } ;
struct picolcd_data {int status; int /*<<< orphan*/ * version; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int PICOLCD_BOOTLOADER ; 
 int /*<<< orphan*/  REPORT_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct hid_device*,char*) ; 
 struct picolcd_data* FUNC1 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct picolcd_pending*) ; 
 struct picolcd_pending* FUNC4 (struct hid_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hid_device *hdev)
{
	struct picolcd_data *data = FUNC1(hdev);
	struct picolcd_pending *verinfo;
	int ret = 0;

	if (!data)
		return -ENODEV;

	verinfo = FUNC4(hdev, REPORT_VERSION, NULL, 0);
	if (!verinfo) {
		FUNC0(hdev, "no version response from PicoLCD\n");
		return -ENODEV;
	}

	if (verinfo->raw_size == 2) {
		data->version[0] = verinfo->raw_data[1];
		data->version[1] = verinfo->raw_data[0];
		if (data->status & PICOLCD_BOOTLOADER) {
			FUNC2(hdev, "PicoLCD, bootloader version %d.%d\n",
				 verinfo->raw_data[1], verinfo->raw_data[0]);
		} else {
			FUNC2(hdev, "PicoLCD, firmware version %d.%d\n",
				 verinfo->raw_data[1], verinfo->raw_data[0]);
		}
	} else {
		FUNC0(hdev, "confused, got unexpected version response from PicoLCD\n");
		ret = -EINVAL;
	}
	FUNC3(verinfo);
	return ret;
}