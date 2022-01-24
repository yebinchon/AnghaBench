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
struct TYPE_2__ {struct input_dev* input; } ;
struct rmi_data {int device_flags; int /*<<< orphan*/  flags; TYPE_1__ xport; } ;
struct input_dev {int dummy; } ;
struct hid_input {struct input_dev* input; } ;
struct hid_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int RMI_DEVICE ; 
 int /*<<< orphan*/  RMI_MODE_ATTN_REPORTS ; 
 int /*<<< orphan*/  RMI_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*) ; 
 struct rmi_data* FUNC4 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct hid_device*) ; 
 int FUNC6 (struct hid_device*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int FUNC8 (struct hid_device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct hid_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct hid_device *hdev, struct hid_input *hi)
{
	struct rmi_data *data = FUNC4(hdev);
	struct input_dev *input = hi->input;
	int ret = 0;

	if (!(data->device_flags & RMI_DEVICE))
		return 0;

	data->xport.input = input;

	FUNC1(hdev, "Opening low level driver\n");
	ret = FUNC6(hdev);
	if (ret)
		return ret;

	/* Allow incoming hid reports */
	FUNC2(hdev);

	ret = FUNC8(hdev, RMI_MODE_ATTN_REPORTS);
	if (ret < 0) {
		FUNC0(&hdev->dev, "failed to set rmi mode\n");
		goto exit;
	}

	ret = FUNC9(hdev, 0);
	if (ret < 0) {
		FUNC0(&hdev->dev, "failed to set page select to 0.\n");
		goto exit;
	}

	ret = FUNC7(&data->xport);
	if (ret < 0) {
		FUNC0(&hdev->dev, "failed to register transport driver\n");
		goto exit;
	}

	FUNC10(RMI_STARTED, &data->flags);

exit:
	FUNC3(hdev);
	FUNC5(hdev);
	return ret;
}