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
struct hidpp_device {int protocol_major; } ;
struct hid_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*) ; 
 struct hidpp_device* FUNC2 (struct hid_device*) ; 
 char* FUNC3 (struct hidpp_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,char*) ; 

__attribute__((used)) static void FUNC6(struct hid_device *hdev)
{
	struct hidpp_device *hidpp = FUNC2(hdev);
	char *name;

	if (hidpp->protocol_major < 2)
		return;

	name = FUNC3(hidpp);

	if (!name) {
		FUNC1(hdev, "unable to retrieve the name of the device");
	} else {
		FUNC0("HID++: Got name: %s\n", name);
		FUNC5(hdev->name, sizeof(hdev->name), "%s", name);
	}

	FUNC4(name);
}