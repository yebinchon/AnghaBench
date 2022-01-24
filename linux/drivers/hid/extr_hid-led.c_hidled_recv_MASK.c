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
struct hidled_device {int /*<<< orphan*/  lock; TYPE_1__* config; int /*<<< orphan*/ * buf; int /*<<< orphan*/  hdev; } ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_2__ {scalar_t__ report_type; int /*<<< orphan*/  report_size; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HID_FEATURE_REPORT ; 
 int /*<<< orphan*/  HID_REQ_GET_REPORT ; 
 int /*<<< orphan*/  HID_REQ_SET_REPORT ; 
 scalar_t__ RAW_REQUEST ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct hidled_device *ldev, __u8 *buf)
{
	int ret;

	if (ldev->config->report_type != RAW_REQUEST)
		return -EINVAL;

	FUNC2(&ldev->lock);

	FUNC1(ldev->buf, buf, ldev->config->report_size);

	ret = FUNC0(ldev->hdev, buf[0], ldev->buf,
				 ldev->config->report_size,
				 HID_FEATURE_REPORT,
				 HID_REQ_SET_REPORT);
	if (ret < 0)
		goto err;

	ret = FUNC0(ldev->hdev, buf[0], ldev->buf,
				 ldev->config->report_size,
				 HID_FEATURE_REPORT,
				 HID_REQ_GET_REPORT);

	FUNC1(buf, ldev->buf, ldev->config->report_size);
err:
	FUNC3(&ldev->lock);

	return ret < 0 ? ret : 0;
}