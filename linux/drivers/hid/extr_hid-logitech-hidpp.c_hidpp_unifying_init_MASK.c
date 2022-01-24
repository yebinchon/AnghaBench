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
typedef  int /*<<< orphan*/  u32 ;
struct hidpp_device {struct hid_device* hid_dev; } ;
struct hid_device {char const* uniq; int product; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 char* FUNC1 (struct hidpp_device*) ; 
 int FUNC2 (struct hidpp_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int,char*,...) ; 

__attribute__((used)) static int FUNC5(struct hidpp_device *hidpp)
{
	struct hid_device *hdev = hidpp->hid_dev;
	const char *name;
	u32 serial;
	int ret;

	ret = FUNC2(hidpp, &serial);
	if (ret)
		return ret;

	FUNC4(hdev->uniq, sizeof(hdev->uniq), "%04x-%4phD",
		 hdev->product, &serial);
	FUNC0("HID++ Unifying: Got serial: %s\n", hdev->uniq);

	name = FUNC1(hidpp);
	if (!name)
		return -EIO;

	FUNC4(hdev->name, sizeof(hdev->name), "%s", name);
	FUNC0("HID++ Unifying: Got name: %s\n", name);

	FUNC3(name);
	return 0;
}