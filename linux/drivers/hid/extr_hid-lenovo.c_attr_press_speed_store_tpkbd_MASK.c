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
struct lenovo_drvdata_tpkbd {int press_speed; } ;
struct hid_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 struct lenovo_drvdata_tpkbd* FUNC0 (struct hid_device*) ; 
 scalar_t__ FUNC1 (char const*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*) ; 
 struct hid_device* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
		struct device_attribute *attr,
		const char *buf,
		size_t count)
{
	struct hid_device *hdev = FUNC3(dev);
	struct lenovo_drvdata_tpkbd *data_pointer = FUNC0(hdev);
	int value;

	if (FUNC1(buf, 10, &value) || value < 1 || value > 255)
		return -EINVAL;

	data_pointer->press_speed = value;
	FUNC2(hdev);

	return count;
}