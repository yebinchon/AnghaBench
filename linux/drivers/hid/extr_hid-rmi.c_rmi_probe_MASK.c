#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int disable; } ;
struct TYPE_7__ {int /*<<< orphan*/  irq; TYPE_1__ f30_data; } ;
struct TYPE_6__ {char* proto_name; int /*<<< orphan*/ * ops; TYPE_3__ pdata; int /*<<< orphan*/  dev; } ;
struct rmi_data {int device_flags; size_t input_report_size; size_t output_report_size; TYPE_2__ xport; int /*<<< orphan*/  rmi_irq; int /*<<< orphan*/  page_mutex; int /*<<< orphan*/  wait; void* writeReport; void* readReport; struct hid_device* hdev; int /*<<< orphan*/  reset_work; } ;
struct hid_report {int dummy; } ;
struct hid_device_id {int driver_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct hid_device {TYPE_4__ dev; int /*<<< orphan*/  quirks; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_CONNECT_DEFAULT ; 
 int /*<<< orphan*/  HID_FEATURE_REPORT ; 
 int /*<<< orphan*/  HID_INPUT_REPORT ; 
 int /*<<< orphan*/  HID_OUTPUT_REPORT ; 
 int /*<<< orphan*/  HID_QUIRK_NO_INIT_REPORTS ; 
 int /*<<< orphan*/  HID_QUIRK_NO_INPUT_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RMI_ATTN_REPORT_ID ; 
 int RMI_DEVICE ; 
 int RMI_DEVICE_HAS_PHYS_BUTTONS ; 
 int /*<<< orphan*/  RMI_SET_RMI_MODE_REPORT_ID ; 
 int /*<<< orphan*/  RMI_WRITE_REPORT_ID ; 
 void* FUNC1 (TYPE_4__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*,char*) ; 
 int FUNC4 (struct hid_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct hid_device*) ; 
 void* FUNC6 (struct hid_report*) ; 
 int /*<<< orphan*/  hid_rmi_ops ; 
 int /*<<< orphan*/  FUNC7 (struct hid_device*,struct rmi_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct hid_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hid_report**) ; 
 TYPE_3__ rmi_hid_pdata ; 
 int /*<<< orphan*/  rmi_reset_work ; 
 int FUNC11 (struct hid_device*) ; 

__attribute__((used)) static int FUNC12(struct hid_device *hdev, const struct hid_device_id *id)
{
	struct rmi_data *data = NULL;
	int ret;
	size_t alloc_size;
	struct hid_report *input_report;
	struct hid_report *output_report;
	struct hid_report *feature_report;

	data = FUNC1(&hdev->dev, sizeof(struct rmi_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC0(&data->reset_work, rmi_reset_work);
	data->hdev = hdev;

	FUNC7(hdev, data);

	hdev->quirks |= HID_QUIRK_NO_INIT_REPORTS;
	hdev->quirks |= HID_QUIRK_NO_INPUT_SYNC;

	ret = FUNC5(hdev);
	if (ret) {
		FUNC3(hdev, "parse failed\n");
		return ret;
	}

	if (id->driver_data)
		data->device_flags = id->driver_data;

	/*
	 * Check for the RMI specific report ids. If they are misisng
	 * simply return and let the events be processed by hid-input
	 */
	if (!FUNC10(hdev, HID_FEATURE_REPORT,
	    RMI_SET_RMI_MODE_REPORT_ID, &feature_report)) {
		FUNC2(hdev, "device does not have set mode feature report\n");
		goto start;
	}

	if (!FUNC10(hdev, HID_INPUT_REPORT,
	    RMI_ATTN_REPORT_ID, &input_report)) {
		FUNC2(hdev, "device does not have attention input report\n");
		goto start;
	}

	data->input_report_size = FUNC6(input_report);

	if (!FUNC10(hdev, HID_OUTPUT_REPORT,
	    RMI_WRITE_REPORT_ID, &output_report)) {
		FUNC2(hdev,
			"device does not have rmi write output report\n");
		goto start;
	}

	data->output_report_size = FUNC6(output_report);

	data->device_flags |= RMI_DEVICE;
	alloc_size = data->output_report_size + data->input_report_size;

	data->writeReport = FUNC1(&hdev->dev, alloc_size, GFP_KERNEL);
	if (!data->writeReport) {
		FUNC3(hdev, "failed to allocate buffer for HID reports\n");
		return -ENOMEM;
	}

	data->readReport = data->writeReport + data->output_report_size;

	FUNC8(&data->wait);

	FUNC9(&data->page_mutex);

	ret = FUNC11(hdev);
	if (ret) {
		FUNC3(hdev, "failed to allocate IRQ domain\n");
		return ret;
	}

	if (data->device_flags & RMI_DEVICE_HAS_PHYS_BUTTONS)
		rmi_hid_pdata.f30_data.disable = true;

	data->xport.dev = hdev->dev.parent;
	data->xport.pdata = rmi_hid_pdata;
	data->xport.pdata.irq = data->rmi_irq;
	data->xport.proto_name = "hid";
	data->xport.ops = &hid_rmi_ops;

start:
	ret = FUNC4(hdev, HID_CONNECT_DEFAULT);
	if (ret) {
		FUNC3(hdev, "hw start failed\n");
		return ret;
	}

	return 0;
}