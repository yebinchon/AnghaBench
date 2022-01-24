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
struct rmi_data {int input_report_size; int /*<<< orphan*/  wait; int /*<<< orphan*/  flags; int /*<<< orphan*/  readReport; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RMI_READ_DATA_PENDING ; 
 int /*<<< orphan*/  RMI_READ_REQUEST_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct hid_device*,char*) ; 
 struct rmi_data* FUNC1 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct hid_device *hdev, u8 *data, int size)
{
	struct rmi_data *hdata = FUNC1(hdev);

	if (!FUNC4(RMI_READ_REQUEST_PENDING, &hdata->flags)) {
		FUNC0(hdev, "no read request pending\n");
		return 0;
	}

	FUNC2(hdata->readReport, data, size < hdata->input_report_size ?
			size : hdata->input_report_size);
	FUNC3(RMI_READ_DATA_PENDING, &hdata->flags);
	FUNC5(&hdata->wait);

	return 1;
}