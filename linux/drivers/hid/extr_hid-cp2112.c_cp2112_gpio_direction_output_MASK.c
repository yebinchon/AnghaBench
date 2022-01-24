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
 int /*<<< orphan*/  CP2112_GPIO_CONFIG ; 
 int CP2112_GPIO_CONFIG_LENGTH ; 
 int EIO ; 
 int /*<<< orphan*/  HID_FEATURE_REPORT ; 
 int /*<<< orphan*/  HID_REQ_GET_REPORT ; 
 int /*<<< orphan*/  HID_REQ_SET_REPORT ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_chip*,unsigned int,int) ; 
 int gpio_push_pull ; 
 struct cp2112_device* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*,char*,int) ; 
 int FUNC3 (struct hid_device*,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip,
					unsigned offset, int value)
{
	struct cp2112_device *dev = FUNC1(chip);
	struct hid_device *hdev = dev->hdev;
	u8 *buf = dev->in_out_buffer;
	int ret;

	FUNC4(&dev->lock);

	ret = FUNC3(hdev, CP2112_GPIO_CONFIG, buf,
				 CP2112_GPIO_CONFIG_LENGTH, HID_FEATURE_REPORT,
				 HID_REQ_GET_REPORT);
	if (ret != CP2112_GPIO_CONFIG_LENGTH) {
		FUNC2(hdev, "error requesting GPIO config: %d\n", ret);
		goto fail;
	}

	buf[1] |= 1 << offset;
	buf[2] = gpio_push_pull;

	ret = FUNC3(hdev, CP2112_GPIO_CONFIG, buf,
				 CP2112_GPIO_CONFIG_LENGTH, HID_FEATURE_REPORT,
				 HID_REQ_SET_REPORT);
	if (ret < 0) {
		FUNC2(hdev, "error setting GPIO config: %d\n", ret);
		goto fail;
	}

	FUNC5(&dev->lock);

	/*
	 * Set gpio value when output direction is already set,
	 * as specified in AN495, Rev. 0.2, cpt. 4.4
	 */
	FUNC0(chip, offset, value);

	return 0;

fail:
	FUNC5(&dev->lock);
	return ret < 0 ? ret : -EIO;
}