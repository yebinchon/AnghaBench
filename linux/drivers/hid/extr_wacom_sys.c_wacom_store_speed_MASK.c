#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  features; } ;
struct wacom {TYPE_1__ wacom_wac; } ;
struct hid_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 struct wacom* FUNC0 (struct hid_device*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,int*) ; 
 struct hid_device* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				struct device_attribute *attr,
				const char *buf, size_t count)
{
	struct hid_device *hdev = FUNC2(dev);
	struct wacom *wacom = FUNC0(hdev);
	u8 new_speed;

	if (FUNC1(buf, 0, &new_speed))
		return -EINVAL;

	if (new_speed != 0 && new_speed != 1)
		return -EINVAL;

	FUNC3(hdev, new_speed, &wacom->wacom_wac.features);

	return count;
}