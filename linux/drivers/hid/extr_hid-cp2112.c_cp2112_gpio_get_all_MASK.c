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
typedef  int u8 ;
struct hid_device {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct cp2112_device {int* in_out_buffer; int /*<<< orphan*/  lock; struct hid_device* hdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP2112_GPIO_GET ; 
 int CP2112_GPIO_GET_LENGTH ; 
 int EIO ; 
 int /*<<< orphan*/  HID_FEATURE_REPORT ; 
 int /*<<< orphan*/  HID_REQ_GET_REPORT ; 
 struct cp2112_device* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*,int) ; 
 int FUNC2 (struct hid_device*,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *chip)
{
	struct cp2112_device *dev = FUNC0(chip);
	struct hid_device *hdev = dev->hdev;
	u8 *buf = dev->in_out_buffer;
	int ret;

	FUNC3(&dev->lock);

	ret = FUNC2(hdev, CP2112_GPIO_GET, buf,
				 CP2112_GPIO_GET_LENGTH, HID_FEATURE_REPORT,
				 HID_REQ_GET_REPORT);
	if (ret != CP2112_GPIO_GET_LENGTH) {
		FUNC1(hdev, "error requesting GPIO values: %d\n", ret);
		ret = ret < 0 ? ret : -EIO;
		goto exit;
	}

	ret = buf[1];

exit:
	FUNC4(&dev->lock);

	return ret;
}