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
struct hid_device {int dummy; } ;
struct cp2112_force_read_report {int /*<<< orphan*/  report; int /*<<< orphan*/  length; } ;
struct cp2112_device {size_t read_length; int /*<<< orphan*/  read_data; int /*<<< orphan*/  read_avail; struct hid_device* hdev; } ;
typedef  int /*<<< orphan*/  report ;

/* Variables and functions */
 int /*<<< orphan*/  CP2112_DATA_READ_FORCE_SEND ; 
 int /*<<< orphan*/  HID_OUTPUT_REPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hid_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cp2112_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct hid_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC7(struct cp2112_device *dev, u8 *data, size_t size)
{
	struct hid_device *hdev = dev->hdev;
	struct cp2112_force_read_report report;
	int ret;

	if (size > sizeof(dev->read_data))
		size = sizeof(dev->read_data);
	report.report = CP2112_DATA_READ_FORCE_SEND;
	report.length = FUNC3(size);

	FUNC0(&dev->read_avail, 0);

	ret = FUNC1(hdev, &report.report, sizeof(report),
				HID_OUTPUT_REPORT);
	if (ret < 0) {
		FUNC5(hdev, "Error requesting data: %d\n", ret);
		return ret;
	}

	ret = FUNC2(dev, &dev->read_avail);
	if (ret)
		return ret;

	FUNC4(hdev, "read %d of %zd bytes requested\n",
		dev->read_length, size);

	if (size > dev->read_length)
		size = dev->read_length;

	FUNC6(data, dev->read_data, size);
	return dev->read_length;
}