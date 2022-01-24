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
struct usb_device {int dummy; } ;
struct hid_device {int dummy; } ;
typedef  scalar_t__ __u8 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPIPE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int /*<<< orphan*/  USB_DIR_IN ; 
 int USB_DT_STRING ; 
 int /*<<< orphan*/  USB_REQ_GET_DESCRIPTOR ; 
 int /*<<< orphan*/  FUNC0 (struct hid_device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*,scalar_t__,int) ; 
 struct usb_device* FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 scalar_t__* FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,scalar_t__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(__u8 **pbuf, struct hid_device *hdev,
					__u8 idx, size_t len)
{
	int rc;
	struct usb_device *udev = FUNC2(hdev);
	__u8 *buf = NULL;

	/* Check arguments */
	if (hdev == NULL) {
		rc = -EINVAL;
		goto cleanup;
	}

	buf = FUNC4(len, GFP_KERNEL);
	if (buf == NULL) {
		rc = -ENOMEM;
		goto cleanup;
	}

	rc = FUNC5(udev, FUNC6(udev, 0),
				USB_REQ_GET_DESCRIPTOR, USB_DIR_IN,
				(USB_DT_STRING << 8) + idx,
				0x0409, buf, len,
				USB_CTRL_GET_TIMEOUT);
	if (rc == -EPIPE) {
		FUNC0(hdev, "string descriptor #%hhu not found\n", idx);
		goto cleanup;
	} else if (rc < 0) {
		FUNC1(hdev,
			"failed retrieving string descriptor #%hhu: %d\n",
			idx, rc);
		goto cleanup;
	}

	if (pbuf != NULL) {
		*pbuf = buf;
		buf = NULL;
	}

cleanup:
	FUNC3(buf);
	return rc;
}