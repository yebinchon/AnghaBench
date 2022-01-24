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
struct asus_drvdata {scalar_t__ tp; scalar_t__ battery; } ;

/* Variables and functions */
 scalar_t__ BATTERY_REPORT_ID ; 
 scalar_t__ INPUT_REPORT_ID ; 
 int FUNC0 (struct asus_drvdata*,scalar_t__*,int) ; 
 int FUNC1 (struct asus_drvdata*,scalar_t__*,int) ; 
 struct asus_drvdata* FUNC2 (struct hid_device*) ; 

__attribute__((used)) static int FUNC3(struct hid_device *hdev,
		struct hid_report *report, u8 *data, int size)
{
	struct asus_drvdata *drvdata = FUNC2(hdev);

	if (drvdata->battery && data[0] == BATTERY_REPORT_ID)
		return FUNC0(drvdata, data, size);

	if (drvdata->tp && data[0] == INPUT_REPORT_ID)
		return FUNC1(drvdata, data, size);

	return 0;
}