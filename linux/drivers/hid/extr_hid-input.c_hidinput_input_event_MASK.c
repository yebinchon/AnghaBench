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
struct input_dev {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int /*<<< orphan*/  led_work; } ;

/* Variables and functions */
 unsigned int EV_FF ; 
 unsigned int EV_LED ; 
 int /*<<< orphan*/  FUNC0 (struct hid_field*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,char*) ; 
 int FUNC2 (struct hid_device*,unsigned int,unsigned int,struct hid_field**) ; 
 int FUNC3 (struct input_dev*,unsigned int,unsigned int,int) ; 
 struct hid_device* FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct input_dev *dev, unsigned int type,
				unsigned int code, int value)
{
	struct hid_device *hid = FUNC4(dev);
	struct hid_field *field;
	int offset;

	if (type == EV_FF)
		return FUNC3(dev, type, code, value);

	if (type != EV_LED)
		return -1;

	if ((offset = FUNC2(hid, type, code, &field)) == -1) {
		FUNC1(dev, "event field not found\n");
		return -1;
	}

	FUNC0(field, offset, value);

	FUNC5(&hid->led_work);
	return 0;
}