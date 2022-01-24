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
typedef  int u32 ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASUS_WMI_DEVID_KBD_BACKLIGHT ; 
 int ASUS_WMI_DSTS_PRESENCE_BIT ; 
 int /*<<< orphan*/  ASUS_WMI_METHODID_DSTS ; 
 int /*<<< orphan*/  CONFIG_ASUS_WMI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*,char*,int,int) ; 

__attribute__((used)) static bool FUNC3(struct hid_device *hdev)
{
	u32 value;
	int ret;

	if (!FUNC0(CONFIG_ASUS_WMI))
		return false;

	ret = FUNC1(ASUS_WMI_METHODID_DSTS,
				       ASUS_WMI_DEVID_KBD_BACKLIGHT, 0, &value);
	FUNC2(hdev, "WMI backlight check: rc %d value %x", ret, value);
	if (ret)
		return false;

	return !!(value & ASUS_WMI_DSTS_PRESENCE_BIT);
}