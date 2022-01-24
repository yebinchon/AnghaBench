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
typedef  scalar_t__ u8 ;
struct hid_report {int dummy; } ;
struct hid_device {int dummy; } ;
struct elan_drvdata {int dummy; } ;

/* Variables and functions */
 int ELAN_I2C_REPORT_SIZE ; 
 int ELAN_INPUT_REPORT_SIZE ; 
 scalar_t__ ELAN_MT_FIRST_FINGER ; 
 scalar_t__ ELAN_MT_I2C ; 
 scalar_t__ ELAN_MT_SECOND_FINGER ; 
 scalar_t__ ELAN_SINGLE_FINGER ; 
 int /*<<< orphan*/  FUNC0 (struct elan_drvdata*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct elan_drvdata*,scalar_t__*) ; 
 struct elan_drvdata* FUNC2 (struct hid_device*) ; 
 scalar_t__ FUNC3 (struct hid_device*) ; 

__attribute__((used)) static int FUNC4(struct hid_device *hdev,
			  struct hid_report *report, u8 *data, int size)
{
	struct elan_drvdata *drvdata = FUNC2(hdev);

	if (FUNC3(hdev))
		return 0;

	if (data[0] == ELAN_SINGLE_FINGER ||
	    data[0] == ELAN_MT_FIRST_FINGER ||
	    data[0] == ELAN_MT_SECOND_FINGER) {
		if (size == ELAN_INPUT_REPORT_SIZE) {
			FUNC1(drvdata, data);
			return 1;
		}
	}

	if (data[0] == ELAN_MT_I2C && size == ELAN_I2C_REPORT_SIZE) {
		FUNC0(drvdata, data);
		return 1;
	}

	return 0;
}