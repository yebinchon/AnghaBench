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
typedef  int u32 ;
typedef  int u16 ;
struct hid_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_FEATURE_REPORT ; 
 int /*<<< orphan*/  HID_REQ_GET_REPORT ; 
 int /*<<< orphan*/  HID_REQ_SET_REPORT ; 
 int T4_CMD_REGISTER_READ ; 
 int T4_CMD_REGISTER_WRITE ; 
 int T4_FEATURE_REPORT_ID ; 
 int /*<<< orphan*/  T4_FEATURE_REPORT_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int FUNC1 (struct hid_device*,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int*) ; 
 int FUNC5 (int*,int,int) ; 

__attribute__((used)) static int FUNC6(struct hid_device *hdev, u32 address,
	u8 *read_val, u8 write_val, bool read_flag)
{
	int ret;
	u16 check_sum;
	u8 *input;
	u8 *readbuf = NULL;

	input = FUNC3(T4_FEATURE_REPORT_LEN, GFP_KERNEL);
	if (!input)
		return -ENOMEM;

	input[0] = T4_FEATURE_REPORT_ID;
	if (read_flag) {
		input[1] = T4_CMD_REGISTER_READ;
		input[8] = 0x00;
	} else {
		input[1] = T4_CMD_REGISTER_WRITE;
		input[8] = write_val;
	}
	FUNC4(address, input + 2);
	input[6] = 1;
	input[7] = 0;

	/* Calculate the checksum */
	check_sum = FUNC5(input, 1, 8);
	input[9] = (u8)check_sum;
	input[10] = (u8)(check_sum >> 8);
	input[11] = 0;

	ret = FUNC1(hdev, T4_FEATURE_REPORT_ID, input,
			T4_FEATURE_REPORT_LEN,
			HID_FEATURE_REPORT, HID_REQ_SET_REPORT);

	if (ret < 0) {
		FUNC0(&hdev->dev, "failed to read command (%d)\n", ret);
		goto exit;
	}

	if (read_flag) {
		readbuf = FUNC3(T4_FEATURE_REPORT_LEN, GFP_KERNEL);
		if (!readbuf) {
			ret = -ENOMEM;
			goto exit;
		}

		ret = FUNC1(hdev, T4_FEATURE_REPORT_ID, readbuf,
				T4_FEATURE_REPORT_LEN,
				HID_FEATURE_REPORT, HID_REQ_GET_REPORT);
		if (ret < 0) {
			FUNC0(&hdev->dev, "failed read register (%d)\n", ret);
			goto exit_readbuf;
		}

		ret = -EINVAL;

		if (*(u32 *)&readbuf[6] != address) {
			FUNC0(&hdev->dev, "read register address error (%x,%x)\n",
				*(u32 *)&readbuf[6], address);
			goto exit_readbuf;
		}

		if (*(u16 *)&readbuf[10] != 1) {
			FUNC0(&hdev->dev, "read register size error (%x)\n",
				*(u16 *)&readbuf[10]);
			goto exit_readbuf;
		}

		check_sum = FUNC5(readbuf, 6, 7);
		if (*(u16 *)&readbuf[13] != check_sum) {
			FUNC0(&hdev->dev, "read register checksum error (%x,%x)\n",
				*(u16 *)&readbuf[13], check_sum);
			goto exit_readbuf;
		}

		*read_val = readbuf[12];
	}

	ret = 0;

exit_readbuf:
	FUNC2(readbuf);
exit:
	FUNC2(input);
	return ret;
}