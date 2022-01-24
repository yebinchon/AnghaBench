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
typedef  int /*<<< orphan*/  u32 ;
struct hid_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_FEATURE_REPORT ; 
 int /*<<< orphan*/  HID_REQ_GET_REPORT ; 
 int /*<<< orphan*/  HID_REQ_SET_REPORT ; 
 int U1_CMD_REGISTER_READ ; 
 int U1_CMD_REGISTER_WRITE ; 
 int U1_FEATURE_REPORT_ID ; 
 int U1_FEATURE_REPORT_LEN ; 
 int U1_FEATURE_REPORT_LEN_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct hid_device*,int,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC5(struct hid_device *hdev, u32 address,
	u8 *read_val, u8 write_val, bool read_flag)
{
	int ret, i;
	u8 check_sum;
	u8 *input;
	u8 *readbuf;

	input = FUNC3(U1_FEATURE_REPORT_LEN, GFP_KERNEL);
	if (!input)
		return -ENOMEM;

	input[0] = U1_FEATURE_REPORT_ID;
	if (read_flag) {
		input[1] = U1_CMD_REGISTER_READ;
		input[6] = 0x00;
	} else {
		input[1] = U1_CMD_REGISTER_WRITE;
		input[6] = write_val;
	}

	FUNC4(address, input + 2);

	/* Calculate the checksum */
	check_sum = U1_FEATURE_REPORT_LEN_ALL;
	for (i = 0; i < U1_FEATURE_REPORT_LEN - 1; i++)
		check_sum += input[i];

	input[7] = check_sum;
	ret = FUNC1(hdev, U1_FEATURE_REPORT_ID, input,
			U1_FEATURE_REPORT_LEN,
			HID_FEATURE_REPORT, HID_REQ_SET_REPORT);

	if (ret < 0) {
		FUNC0(&hdev->dev, "failed to read command (%d)\n", ret);
		goto exit;
	}

	if (read_flag) {
		readbuf = FUNC3(U1_FEATURE_REPORT_LEN, GFP_KERNEL);
		if (!readbuf) {
			ret = -ENOMEM;
			goto exit;
		}

		ret = FUNC1(hdev, U1_FEATURE_REPORT_ID, readbuf,
				U1_FEATURE_REPORT_LEN,
				HID_FEATURE_REPORT, HID_REQ_GET_REPORT);

		if (ret < 0) {
			FUNC0(&hdev->dev, "failed read register (%d)\n", ret);
			FUNC2(readbuf);
			goto exit;
		}

		*read_val = readbuf[6];

		FUNC2(readbuf);
	}

	ret = 0;

exit:
	FUNC2(input);
	return ret;
}