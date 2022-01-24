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
typedef  int /*<<< orphan*/  u8 ;
struct steam_device {TYPE_2__* hdev; } ;
struct hid_report {int dummy; } ;
struct TYPE_4__ {TYPE_1__* report_enum; } ;
struct TYPE_3__ {struct hid_report** report_id_hash; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t HID_FEATURE_REPORT ; 
 int /*<<< orphan*/  HID_REQ_GET_REPORT ; 
 int /*<<< orphan*/ * FUNC0 (struct hid_report*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hid_report*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct steam_device *steam,
		u8 *data, int size)
{
	struct hid_report *r;
	u8 *buf;
	int ret;

	r = steam->hdev->report_enum[HID_FEATURE_REPORT].report_id_hash[0];
	if (FUNC2(r) < 64)
		return -EINVAL;

	buf = FUNC0(r, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	/*
	 * The report ID is always 0, so strip the first byte from the output.
	 * hid_report_len() is not counting the report ID, so +1 to the length
	 * or else we get a EOVERFLOW. We are safe from a buffer overflow
	 * because hid_alloc_report_buf() allocates +7 bytes.
	 */
	ret = FUNC1(steam->hdev, 0x00,
			buf, FUNC2(r) + 1,
			HID_FEATURE_REPORT, HID_REQ_GET_REPORT);
	if (ret > 0)
		FUNC4(data, buf + 1, FUNC5(size, ret - 1));
	FUNC3(buf);
	return ret;
}