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
struct i2c_hid {int* rawbuf; scalar_t__ bufsize; } ;
struct i2c_client {int dummy; } ;
struct hid_device {struct i2c_client* driver_data; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int EINVAL ; 
 unsigned char HID_FEATURE_REPORT ; 
 unsigned char HID_OUTPUT_REPORT ; 
 struct i2c_hid* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,int,unsigned char,int*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,size_t) ; 
 size_t FUNC3 (size_t,size_t) ; 

__attribute__((used)) static int FUNC4(struct hid_device *hid,
		unsigned char report_number, __u8 *buf, size_t count,
		unsigned char report_type)
{
	struct i2c_client *client = hid->driver_data;
	struct i2c_hid *ihid = FUNC0(client);
	size_t ret_count, ask_count;
	int ret;

	if (report_type == HID_OUTPUT_REPORT)
		return -EINVAL;

	/* +2 bytes to include the size of the reply in the query buffer */
	ask_count = FUNC3(count + 2, (size_t)ihid->bufsize);

	ret = FUNC1(client,
			report_type == HID_FEATURE_REPORT ? 0x03 : 0x01,
			report_number, ihid->rawbuf, ask_count);

	if (ret < 0)
		return ret;

	ret_count = ihid->rawbuf[0] | (ihid->rawbuf[1] << 8);

	if (ret_count <= 2)
		return 0;

	ret_count = FUNC3(ret_count, ask_count);

	/* The query buffer contains the size, dropping it in the reply */
	count = FUNC3(count, ret_count - 2);
	FUNC2(buf, ihid->rawbuf + 2, count);

	return count;
}