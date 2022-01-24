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
struct rmi_data {int device_flags; } ;
struct hid_report {int dummy; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
#define  RMI_ATTN_REPORT_ID 129 
 int RMI_DEVICE ; 
#define  RMI_READ_DATA_REPORT_ID 128 
 struct rmi_data* FUNC0 (struct hid_device*) ; 
 int FUNC1 (struct hid_device*,int*,int) ; 
 int FUNC2 (struct hid_device*,int*,int) ; 
 int FUNC3 (struct hid_device*,int*,int) ; 

__attribute__((used)) static int FUNC4(struct hid_device *hdev,
		struct hid_report *report, u8 *data, int size)
{
	struct rmi_data *hdata = FUNC0(hdev);

	if (!(hdata->device_flags & RMI_DEVICE))
		return 0;

	size = FUNC1(hdev, data, size);
	if (size < 2)
		return 0;

	switch (data[0]) {
	case RMI_READ_DATA_REPORT_ID:
		return FUNC3(hdev, data, size);
	case RMI_ATTN_REPORT_ID:
		return FUNC2(hdev, data, size);
	default:
		return 1;
	}

	return 0;
}