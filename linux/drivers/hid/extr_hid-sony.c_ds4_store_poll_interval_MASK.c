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
struct sony_sc {int /*<<< orphan*/  lock; scalar_t__ ds4_bt_poll_interval; } ;
struct hid_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 scalar_t__ DS4_BT_MAX_POLL_INTERVAL_MS ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  SONY_WORKER_STATE ; 
 struct sony_sc* FUNC0 (struct hid_device*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct sony_sc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct hid_device* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				struct device_attribute *attr,
				const char *buf, size_t count)
{
	struct hid_device *hdev = FUNC5(dev);
	struct sony_sc *sc = FUNC0(hdev);
	unsigned long flags;
	u8 interval;

	if (FUNC1(buf, 0, &interval))
		return -EINVAL;

	if (interval > DS4_BT_MAX_POLL_INTERVAL_MS)
		return -EINVAL;

	FUNC3(&sc->lock, flags);
	sc->ds4_bt_poll_interval = interval;
	FUNC4(&sc->lock, flags);

	FUNC2(sc, SONY_WORKER_STATE);

	return count;
}