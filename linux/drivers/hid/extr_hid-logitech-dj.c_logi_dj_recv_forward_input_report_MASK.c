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
struct hid_device {int dummy; } ;
struct dj_receiver_dev {int /*<<< orphan*/  lock; struct dj_device** paired_dj_devices; } ;
struct dj_device {int reports_supported; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int DJ_DEVICE_INDEX_MIN ; 
 int DJ_MAX_PAIRED_DEVICES ; 
 scalar_t__ REPORT_TYPE_RFREPORT_LAST ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*,char*,scalar_t__) ; 
 struct dj_receiver_dev* FUNC3 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct dj_device*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dj_receiver_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct hid_device *hdev,
					      u8 *data, int size)
{
	struct dj_receiver_dev *djrcv_dev = FUNC3(hdev);
	struct dj_device *dj_dev;
	unsigned long flags;
	u8 report = data[0];
	int i;

	if (report > REPORT_TYPE_RFREPORT_LAST) {
		FUNC2(hdev, "Unexpected input report number %d\n", report);
		return;
	}

	FUNC6(&djrcv_dev->lock, flags);
	for (i = 0; i < (DJ_MAX_PAIRED_DEVICES + DJ_DEVICE_INDEX_MIN); i++) {
		dj_dev = djrcv_dev->paired_dj_devices[i];
		if (dj_dev && (dj_dev->reports_supported & FUNC0(report))) {
			FUNC4(dj_dev, data, size);
			FUNC7(&djrcv_dev->lock, flags);
			return;
		}
	}

	FUNC5(djrcv_dev);
	FUNC7(&djrcv_dev->lock, flags);

	FUNC1("No dj-devs handling input report number %d\n", report);
}