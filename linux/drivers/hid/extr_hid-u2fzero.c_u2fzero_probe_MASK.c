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
struct u2fzero_device {int present; int /*<<< orphan*/  lock; struct hid_device* hdev; int /*<<< orphan*/ * buf_in; int /*<<< orphan*/ * buf_out; } ;
struct u2f_hid_report {int dummy; } ;
struct u2f_hid_msg {int dummy; } ;
struct hidraw {unsigned int minor; } ;
struct hid_device_id {int dummy; } ;
struct hid_device {scalar_t__ hidraw; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_CONNECT_HIDRAW ; 
 void* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct u2fzero_device* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hid_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct hid_device*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct hid_device*,struct u2fzero_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct u2fzero_device*) ; 
 int FUNC10 (struct u2fzero_device*,unsigned int) ; 
 int FUNC11 (struct u2fzero_device*,unsigned int) ; 
 int /*<<< orphan*/  usb_hid_driver ; 

__attribute__((used)) static int FUNC12(struct hid_device *hdev,
			 const struct hid_device_id *id)
{
	struct u2fzero_device *dev;
	unsigned int minor;
	int ret;

	if (!FUNC5(hdev, &usb_hid_driver))
		return -EINVAL;

	dev = FUNC1(&hdev->dev, sizeof(*dev), GFP_KERNEL);
	if (dev == NULL)
		return -ENOMEM;

	dev->buf_out = FUNC0(&hdev->dev,
		sizeof(struct u2f_hid_report), GFP_KERNEL);
	if (dev->buf_out == NULL)
		return -ENOMEM;

	dev->buf_in = FUNC0(&hdev->dev,
		sizeof(struct u2f_hid_msg), GFP_KERNEL);
	if (dev->buf_in == NULL)
		return -ENOMEM;

	ret = FUNC6(hdev);
	if (ret)
		return ret;

	dev->hdev = hdev;
	FUNC7(hdev, dev);
	FUNC8(&dev->lock);

	ret = FUNC2(hdev, HID_CONNECT_HIDRAW);
	if (ret)
		return ret;

	FUNC9(dev);

	dev->present = true;

	minor = ((struct hidraw *) hdev->hidraw)->minor;

	ret = FUNC11(dev, minor);
	if (ret) {
		FUNC3(hdev);
		return ret;
	}

	FUNC4(hdev, "U2F Zero LED initialised\n");

	ret = FUNC10(dev, minor);
	if (ret) {
		FUNC3(hdev);
		return ret;
	}

	FUNC4(hdev, "U2F Zero RNG initialised\n");

	return 0;
}