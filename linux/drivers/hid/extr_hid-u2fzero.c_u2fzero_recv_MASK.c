#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct u2fzero_transfer_context {int /*<<< orphan*/  done; } ;
struct u2fzero_device {int /*<<< orphan*/  lock; struct u2f_hid_report* buf_in; TYPE_1__* urb; struct u2f_hid_msg* buf_out; struct hid_device* hdev; } ;
struct u2f_hid_report {int dummy; } ;
struct u2f_hid_msg {int dummy; } ;
struct hid_device {int dummy; } ;
struct TYPE_3__ {int actual_length; struct u2fzero_transfer_context* context; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct hid_device*,char*,...) ; 
 int FUNC1 (struct hid_device*,struct u2f_hid_msg*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct u2f_hid_msg*,struct u2f_hid_report*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct u2fzero_device *dev,
			struct u2f_hid_report *req,
			struct u2f_hid_msg *resp)
{
	int ret;
	struct hid_device *hdev = dev->hdev;
	struct u2fzero_transfer_context ctx;

	FUNC5(&dev->lock);

	FUNC3(dev->buf_out, req, sizeof(struct u2f_hid_report));

	dev->urb->context = &ctx;
	FUNC2(&ctx.done);

	ret = FUNC9(dev->urb, GFP_NOIO);
	if (FUNC7(ret)) {
		FUNC0(hdev, "usb_submit_urb failed: %d", ret);
		goto err;
	}

	ret = FUNC1(dev->hdev, dev->buf_out,
				   sizeof(struct u2f_hid_msg));

	if (ret < 0) {
		FUNC0(hdev, "hid_hw_output_report failed: %d", ret);
		goto err;
	}

	ret = (FUNC10(
		&ctx.done, FUNC4(USB_CTRL_SET_TIMEOUT)));
	if (ret < 0) {
		FUNC8(dev->urb);
		FUNC0(hdev, "urb submission timed out");
	} else {
		ret = dev->urb->actual_length;
		FUNC3(resp, dev->buf_in, ret);
	}

err:
	FUNC6(&dev->lock);

	return ret;
}