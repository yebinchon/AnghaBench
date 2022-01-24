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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
struct hid_report {int dummy; } ;
struct hid_device {int dummy; } ;
struct creative_sb0540 {int /*<<< orphan*/  input_dev; } ;

/* Variables and functions */
 int KEY_RESERVED ; 
 int FUNC0 (struct creative_sb0540*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*,int) ; 
 struct creative_sb0540* FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct hid_device *hid,
	struct hid_report *report, u8 *data, int len)
{
	struct creative_sb0540 *creative_sb0540 = FUNC2(hid);
	u64 code, main_code;
	int key;

	if (len != 6)
		return 0;

	/* From daemons/hw_hiddev.c sb0540_rec() in lirc */
	code = FUNC5(data[5], 8);
	main_code = (code << 8) + ((~code) & 0xff);

	/*
	 * Flip to get values in the same format as
	 * remotes/creative/lircd.conf.alsa_usb in lirc
	 */
	main_code = ((main_code & 0xff) << 8) +
		((main_code & 0xff00) >> 8);

	key = FUNC0(creative_sb0540, main_code);
	if (key == 0 || key == KEY_RESERVED) {
		FUNC1(hid, "Could not get a key for main_code %llX\n",
			main_code);
		return 0;
	}

	FUNC3(creative_sb0540->input_dev, key, 1);
	FUNC3(creative_sb0540->input_dev, key, 0);
	FUNC4(creative_sb0540->input_dev);

	/* let hidraw and hiddev handle the report */
	return 0;
}