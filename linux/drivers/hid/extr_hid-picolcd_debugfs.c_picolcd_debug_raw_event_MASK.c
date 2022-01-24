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
typedef  size_t u8 ;
struct picolcd_data {int /*<<< orphan*/  addr_sz; } ;
struct hid_report {int id; } ;
struct hid_device {int /*<<< orphan*/  debug_wait; int /*<<< orphan*/  debug_list; } ;

/* Variables and functions */
 size_t FUNC0 (char**) ; 
 int /*<<< orphan*/  BUFF_SZ ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  REPORT_BL_ERASE_MEMORY 139 
#define  REPORT_BL_READ_MEMORY 138 
#define  REPORT_BL_WRITE_MEMORY 137 
#define  REPORT_DEVID 136 
#define  REPORT_EE_DATA 135 
#define  REPORT_ERROR_CODE 134 
#define  REPORT_HOOK_VERSION 133 
#define  REPORT_IR_DATA 132 
#define  REPORT_KEY_STATE 131 
#define  REPORT_MEMORY 130 
#define  REPORT_SPLASH_SIZE 129 
#define  REPORT_VERSION 128 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t*,size_t) ; 
 char** error_codes ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct picolcd_data *data,
		struct hid_device *hdev, struct hid_report *report,
		u8 *raw_data, int size)
{
	char *buff;

#define BUFF_SZ 256
	/* Avoid unnecessary overhead if debugfs is disabled */
	if (FUNC5(&hdev->debug_list))
		return;

	buff = FUNC4(BUFF_SZ, GFP_ATOMIC);
	if (!buff)
		return;

	switch (report->id) {
	case REPORT_ERROR_CODE:
		/* 2 data bytes with affected report and error code */
		FUNC6(buff, BUFF_SZ, "report %s (%d, size=%d)\n",
			"REPORT_ERROR_CODE", report->id, size-1);
		FUNC2(hdev, buff);
		if (raw_data[2] < FUNC0(error_codes))
			FUNC6(buff, BUFF_SZ, "\tError code 0x%02x (%s) in reply to report 0x%02x\n",
					raw_data[2], error_codes[raw_data[2]], raw_data[1]);
		else
			FUNC6(buff, BUFF_SZ, "\tError code 0x%02x in reply to report 0x%02x\n",
					raw_data[2], raw_data[1]);
		FUNC2(hdev, buff);
		break;
	case REPORT_KEY_STATE:
		/* 2 data bytes with key state */
		FUNC6(buff, BUFF_SZ, "report %s (%d, size=%d)\n",
			"REPORT_KEY_STATE", report->id, size-1);
		FUNC2(hdev, buff);
		if (raw_data[1] == 0)
			FUNC6(buff, BUFF_SZ, "\tNo key pressed\n");
		else if (raw_data[2] == 0)
			FUNC6(buff, BUFF_SZ, "\tOne key pressed: 0x%02x (%d)\n",
					raw_data[1], raw_data[1]);
		else
			FUNC6(buff, BUFF_SZ, "\tTwo keys pressed: 0x%02x (%d), 0x%02x (%d)\n",
					raw_data[1], raw_data[1], raw_data[2], raw_data[2]);
		FUNC2(hdev, buff);
		break;
	case REPORT_IR_DATA:
		/* Up to 20 byes of IR scancode data */
		FUNC6(buff, BUFF_SZ, "report %s (%d, size=%d)\n",
			"REPORT_IR_DATA", report->id, size-1);
		FUNC2(hdev, buff);
		if (raw_data[1] == 0) {
			FUNC6(buff, BUFF_SZ, "\tUnexpectedly 0 data length\n");
			FUNC2(hdev, buff);
		} else if (raw_data[1] + 1 <= size) {
			FUNC6(buff, BUFF_SZ, "\tData length: %d\n\tIR Data: ",
					raw_data[1]);
			FUNC2(hdev, buff);
			FUNC1(buff, BUFF_SZ, raw_data+2, raw_data[1]);
			FUNC2(hdev, buff);
		} else {
			FUNC6(buff, BUFF_SZ, "\tOverflowing data length: %d\n",
					raw_data[1]-1);
			FUNC2(hdev, buff);
		}
		break;
	case REPORT_EE_DATA:
		/* Data buffer in response to REPORT_EE_READ or REPORT_EE_WRITE */
		FUNC6(buff, BUFF_SZ, "report %s (%d, size=%d)\n",
			"REPORT_EE_DATA", report->id, size-1);
		FUNC2(hdev, buff);
		FUNC6(buff, BUFF_SZ, "\tData address: 0x%02x%02x\n",
				raw_data[2], raw_data[1]);
		FUNC2(hdev, buff);
		FUNC6(buff, BUFF_SZ, "\tData length: %d\n", raw_data[3]);
		FUNC2(hdev, buff);
		if (raw_data[3] == 0) {
			FUNC6(buff, BUFF_SZ, "\tNo data\n");
			FUNC2(hdev, buff);
		} else if (raw_data[3] + 4 <= size) {
			FUNC6(buff, BUFF_SZ, "\tData: ");
			FUNC2(hdev, buff);
			FUNC1(buff, BUFF_SZ, raw_data+4, raw_data[3]);
			FUNC2(hdev, buff);
		} else {
			FUNC6(buff, BUFF_SZ, "\tData overflowed\n");
			FUNC2(hdev, buff);
		}
		break;
	case REPORT_MEMORY:
		/* Data buffer in response to REPORT_READ_MEMORY or REPORT_WRITE_MEMORY */
		FUNC6(buff, BUFF_SZ, "report %s (%d, size=%d)\n",
			"REPORT_MEMORY", report->id, size-1);
		FUNC2(hdev, buff);
		switch (data->addr_sz) {
		case 2:
			FUNC6(buff, BUFF_SZ, "\tData address: 0x%02x%02x\n",
					raw_data[2], raw_data[1]);
			FUNC2(hdev, buff);
			FUNC6(buff, BUFF_SZ, "\tData length: %d\n", raw_data[3]);
			FUNC2(hdev, buff);
			if (raw_data[3] == 0) {
				FUNC6(buff, BUFF_SZ, "\tNo data\n");
			} else if (raw_data[3] + 4 <= size) {
				FUNC6(buff, BUFF_SZ, "\tData: ");
				FUNC2(hdev, buff);
				FUNC1(buff, BUFF_SZ, raw_data+4, raw_data[3]);
			} else {
				FUNC6(buff, BUFF_SZ, "\tData overflowed\n");
			}
			break;
		case 3:
			FUNC6(buff, BUFF_SZ, "\tData address: 0x%02x%02x%02x\n",
					raw_data[3], raw_data[2], raw_data[1]);
			FUNC2(hdev, buff);
			FUNC6(buff, BUFF_SZ, "\tData length: %d\n", raw_data[4]);
			FUNC2(hdev, buff);
			if (raw_data[4] == 0) {
				FUNC6(buff, BUFF_SZ, "\tNo data\n");
			} else if (raw_data[4] + 5 <= size) {
				FUNC6(buff, BUFF_SZ, "\tData: ");
				FUNC2(hdev, buff);
				FUNC1(buff, BUFF_SZ, raw_data+5, raw_data[4]);
			} else {
				FUNC6(buff, BUFF_SZ, "\tData overflowed\n");
			}
			break;
		default:
			FUNC6(buff, BUFF_SZ, "\tNot supported\n");
		}
		FUNC2(hdev, buff);
		break;
	case REPORT_VERSION:
		FUNC6(buff, BUFF_SZ, "report %s (%d, size=%d)\n",
			"REPORT_VERSION", report->id, size-1);
		FUNC2(hdev, buff);
		FUNC6(buff, BUFF_SZ, "\tFirmware version: %d.%d\n",
				raw_data[2], raw_data[1]);
		FUNC2(hdev, buff);
		break;
	case REPORT_BL_ERASE_MEMORY:
		FUNC6(buff, BUFF_SZ, "report %s (%d, size=%d)\n",
			"REPORT_BL_ERASE_MEMORY", report->id, size-1);
		FUNC2(hdev, buff);
		/* TODO */
		break;
	case REPORT_BL_READ_MEMORY:
		FUNC6(buff, BUFF_SZ, "report %s (%d, size=%d)\n",
			"REPORT_BL_READ_MEMORY", report->id, size-1);
		FUNC2(hdev, buff);
		/* TODO */
		break;
	case REPORT_BL_WRITE_MEMORY:
		FUNC6(buff, BUFF_SZ, "report %s (%d, size=%d)\n",
			"REPORT_BL_WRITE_MEMORY", report->id, size-1);
		FUNC2(hdev, buff);
		/* TODO */
		break;
	case REPORT_DEVID:
		FUNC6(buff, BUFF_SZ, "report %s (%d, size=%d)\n",
			"REPORT_DEVID", report->id, size-1);
		FUNC2(hdev, buff);
		FUNC6(buff, BUFF_SZ, "\tSerial: 0x%02x%02x%02x%02x\n",
				raw_data[1], raw_data[2], raw_data[3], raw_data[4]);
		FUNC2(hdev, buff);
		FUNC6(buff, BUFF_SZ, "\tType: 0x%02x\n",
				raw_data[5]);
		FUNC2(hdev, buff);
		break;
	case REPORT_SPLASH_SIZE:
		FUNC6(buff, BUFF_SZ, "report %s (%d, size=%d)\n",
			"REPORT_SPLASH_SIZE", report->id, size-1);
		FUNC2(hdev, buff);
		FUNC6(buff, BUFF_SZ, "\tTotal splash space: %d\n",
				(raw_data[2] << 8) | raw_data[1]);
		FUNC2(hdev, buff);
		FUNC6(buff, BUFF_SZ, "\tUsed splash space: %d\n",
				(raw_data[4] << 8) | raw_data[3]);
		FUNC2(hdev, buff);
		break;
	case REPORT_HOOK_VERSION:
		FUNC6(buff, BUFF_SZ, "report %s (%d, size=%d)\n",
			"REPORT_HOOK_VERSION", report->id, size-1);
		FUNC2(hdev, buff);
		FUNC6(buff, BUFF_SZ, "\tFirmware version: %d.%d\n",
				raw_data[1], raw_data[2]);
		FUNC2(hdev, buff);
		break;
	default:
		FUNC6(buff, BUFF_SZ, "report %s (%d, size=%d)\n",
			"<unknown>", report->id, size-1);
		FUNC2(hdev, buff);
		break;
	}
	FUNC7(&hdev->debug_wait);
	FUNC3(buff);
}