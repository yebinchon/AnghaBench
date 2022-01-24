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
struct i2c_hid {unsigned int bufsize; } ;
struct i2c_client {int /*<<< orphan*/  irq; } ;
struct hid_device {struct i2c_client* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_FEATURE_REPORT ; 
 int /*<<< orphan*/  HID_INPUT_REPORT ; 
 unsigned int HID_MIN_BUFFER_SIZE ; 
 int /*<<< orphan*/  HID_OUTPUT_REPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct i2c_hid* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_hid*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_hid*) ; 

__attribute__((used)) static int FUNC6(struct hid_device *hid)
{
	struct i2c_client *client = hid->driver_data;
	struct i2c_hid *ihid = FUNC2(client);
	int ret;
	unsigned int bufsize = HID_MIN_BUFFER_SIZE;

	FUNC4(hid, HID_INPUT_REPORT, &bufsize);
	FUNC4(hid, HID_OUTPUT_REPORT, &bufsize);
	FUNC4(hid, HID_FEATURE_REPORT, &bufsize);

	if (bufsize > ihid->bufsize) {
		FUNC0(client->irq);
		FUNC5(ihid);

		ret = FUNC3(ihid, bufsize);
		FUNC1(client->irq);

		if (ret)
			return ret;
	}

	return 0;
}