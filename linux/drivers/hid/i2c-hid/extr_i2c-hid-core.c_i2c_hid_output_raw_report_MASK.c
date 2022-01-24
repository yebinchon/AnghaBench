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
struct i2c_hid {int /*<<< orphan*/  reset_lock; } ;
struct i2c_client {int dummy; } ;
struct hid_device {struct i2c_client* driver_data; } ;
typedef  int __u8 ;

/* Variables and functions */
 int EINVAL ; 
 unsigned char HID_FEATURE_REPORT ; 
 unsigned char HID_INPUT_REPORT ; 
 struct i2c_hid* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,int,int,int*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct hid_device *hid, __u8 *buf,
		size_t count, unsigned char report_type, bool use_data)
{
	struct i2c_client *client = hid->driver_data;
	struct i2c_hid *ihid = FUNC0(client);
	int report_id = buf[0];
	int ret;

	if (report_type == HID_INPUT_REPORT)
		return -EINVAL;

	FUNC2(&ihid->reset_lock);

	if (report_id) {
		buf++;
		count--;
	}

	ret = FUNC1(client,
				report_type == HID_FEATURE_REPORT ? 0x03 : 0x02,
				report_id, buf, count, use_data);

	if (report_id && ret >= 0)
		ret++; /* add report_id to the number of transfered bytes */

	FUNC3(&ihid->reset_lock);

	return ret;
}