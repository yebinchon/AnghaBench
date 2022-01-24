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
struct TYPE_2__ {int devtype; int /*<<< orphan*/  lock; } ;
struct wiimote_data {TYPE_1__ state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int __u8 ;

/* Variables and functions */
#define  WIIMOTE_DEV_BALANCE_BOARD 134 
#define  WIIMOTE_DEV_GEN10 133 
#define  WIIMOTE_DEV_GEN20 132 
#define  WIIMOTE_DEV_GENERIC 131 
#define  WIIMOTE_DEV_PENDING 130 
#define  WIIMOTE_DEV_PRO_CONTROLLER 129 
#define  WIIMOTE_DEV_UNKNOWN 128 
 struct wiimote_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				struct device_attribute *attr,
				char *buf)
{
	struct wiimote_data *wdata = FUNC0(dev);
	__u8 type;
	unsigned long flags;

	FUNC1(&wdata->state.lock, flags);
	type = wdata->state.devtype;
	FUNC2(&wdata->state.lock, flags);

	switch (type) {
	case WIIMOTE_DEV_GENERIC:
		return FUNC3(buf, "generic\n");
	case WIIMOTE_DEV_GEN10:
		return FUNC3(buf, "gen10\n");
	case WIIMOTE_DEV_GEN20:
		return FUNC3(buf, "gen20\n");
	case WIIMOTE_DEV_BALANCE_BOARD:
		return FUNC3(buf, "balanceboard\n");
	case WIIMOTE_DEV_PRO_CONTROLLER:
		return FUNC3(buf, "procontroller\n");
	case WIIMOTE_DEV_PENDING:
		return FUNC3(buf, "pending\n");
	case WIIMOTE_DEV_UNKNOWN:
		/* fallthrough */
	default:
		return FUNC3(buf, "unknown\n");
	}
}