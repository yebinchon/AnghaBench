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
typedef  int /*<<< orphan*/  u8 ;
struct wacom {int /*<<< orphan*/  lock; } ;
struct hid_device {scalar_t__ bus; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ BUS_BLUETOOTH ; 
 int EINVAL ; 
 int /*<<< orphan*/  WAC_CMD_ICON_BT_XFER ; 
 int /*<<< orphan*/  WAC_CMD_ICON_XFER ; 
 struct wacom* FUNC0 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct hid_device* FUNC3 (struct device*) ; 
 int FUNC4 (struct wacom*,int,int /*<<< orphan*/ ,unsigned int,char const*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, int button_id,
					const char *buf, size_t count)
{
	struct hid_device *hdev = FUNC3(dev);
	struct wacom *wacom = FUNC0(hdev);
	int err;
	unsigned len;
	u8 xfer_id;

	if (hdev->bus == BUS_BLUETOOTH) {
		len = 256;
		xfer_id = WAC_CMD_ICON_BT_XFER;
	} else {
		len = 1024;
		xfer_id = WAC_CMD_ICON_XFER;
	}

	if (count != len)
		return -EINVAL;

	FUNC1(&wacom->lock);

	err = FUNC4(wacom, button_id, xfer_id, len, buf);

	FUNC2(&wacom->lock);

	return err < 0 ? err : count;
}