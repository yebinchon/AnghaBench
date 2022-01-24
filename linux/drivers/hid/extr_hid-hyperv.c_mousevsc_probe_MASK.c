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
struct TYPE_2__ {int /*<<< orphan*/  version; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; } ;
struct mousevsc_dev {int* report_desc; int connected; int init_complete; struct hid_device* hid_device; TYPE_1__ hid_dev_info; } ;
struct hv_vmbus_device_id {int dummy; } ;
struct hv_device {int /*<<< orphan*/  channel; int /*<<< orphan*/  device; } ;
struct hid_device {int /*<<< orphan*/  name; int /*<<< orphan*/  version; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bus; int /*<<< orphan*/ * driver; int /*<<< orphan*/ * ll_driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_VIRTUAL ; 
 int ENOMEM ; 
 int HID_CONNECT_HIDDEV ; 
 int HID_CONNECT_HIDINPUT ; 
 int /*<<< orphan*/  INPUTVSC_RECV_RING_BUFFER_SIZE ; 
 int /*<<< orphan*/  INPUTVSC_SEND_RING_BUFFER_SIZE ; 
 scalar_t__ FUNC0 (struct hid_device*) ; 
 int FUNC1 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct hid_device*) ; 
 struct hid_device* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct hid_device*,char*) ; 
 int FUNC7 (struct hid_device*,int) ; 
 int FUNC8 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct hid_device*,struct hv_device*) ; 
 struct mousevsc_dev* FUNC10 (struct hv_device*) ; 
 int FUNC11 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct mousevsc_dev*) ; 
 int /*<<< orphan*/  mousevsc_hid_driver ; 
 int /*<<< orphan*/  mousevsc_ll_driver ; 
 int /*<<< orphan*/  mousevsc_on_channel_callback ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hv_device*) ; 

__attribute__((used)) static int FUNC16(struct hv_device *device,
			const struct hv_vmbus_device_id *dev_id)
{
	int ret;
	struct mousevsc_dev *input_dev;
	struct hid_device *hid_dev;

	input_dev = FUNC10(device);

	if (!input_dev)
		return -ENOMEM;

	ret = FUNC15(device->channel,
		INPUTVSC_SEND_RING_BUFFER_SIZE,
		INPUTVSC_RECV_RING_BUFFER_SIZE,
		NULL,
		0,
		mousevsc_on_channel_callback,
		device
		);

	if (ret)
		goto probe_err0;

	ret = FUNC11(device);

	if (ret)
		goto probe_err1;

	/* workaround SA-167 */
	if (input_dev->report_desc[14] == 0x25)
		input_dev->report_desc[14] = 0x29;

	hid_dev = FUNC4();
	if (FUNC0(hid_dev)) {
		ret = FUNC1(hid_dev);
		goto probe_err1;
	}

	hid_dev->ll_driver = &mousevsc_ll_driver;
	hid_dev->driver = &mousevsc_hid_driver;
	hid_dev->bus = BUS_VIRTUAL;
	hid_dev->vendor = input_dev->hid_dev_info.vendor;
	hid_dev->product = input_dev->hid_dev_info.product;
	hid_dev->version = input_dev->hid_dev_info.version;
	input_dev->hid_device = hid_dev;

	FUNC13(hid_dev->name, "%s", "Microsoft Vmbus HID-compliant Mouse");

	FUNC9(hid_dev, device);

	ret = FUNC3(hid_dev);
	if (ret)
		goto probe_err1;


	ret = FUNC8(hid_dev);
	if (ret) {
		FUNC6(hid_dev, "parse failed\n");
		goto probe_err2;
	}

	ret = FUNC7(hid_dev, HID_CONNECT_HIDINPUT | HID_CONNECT_HIDDEV);

	if (ret) {
		FUNC6(hid_dev, "hw start failed\n");
		goto probe_err2;
	}

	FUNC2(&device->device, true);

	input_dev->connected = true;
	input_dev->init_complete = true;

	return ret;

probe_err2:
	FUNC5(hid_dev);

probe_err1:
	FUNC14(device->channel);

probe_err0:
	FUNC12(input_dev);

	return ret;
}