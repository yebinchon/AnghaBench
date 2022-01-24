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
struct TYPE_2__ {int exttype; int /*<<< orphan*/  lock; } ;
struct wiimote_data {TYPE_1__ state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int __u8 ;

/* Variables and functions */
#define  WIIMOTE_EXT_BALANCE_BOARD 135 
#define  WIIMOTE_EXT_CLASSIC_CONTROLLER 134 
#define  WIIMOTE_EXT_DRUMS 133 
#define  WIIMOTE_EXT_GUITAR 132 
#define  WIIMOTE_EXT_NONE 131 
#define  WIIMOTE_EXT_NUNCHUK 130 
#define  WIIMOTE_EXT_PRO_CONTROLLER 129 
#define  WIIMOTE_EXT_UNKNOWN 128 
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
	type = wdata->state.exttype;
	FUNC2(&wdata->state.lock, flags);

	switch (type) {
	case WIIMOTE_EXT_NONE:
		return FUNC3(buf, "none\n");
	case WIIMOTE_EXT_NUNCHUK:
		return FUNC3(buf, "nunchuk\n");
	case WIIMOTE_EXT_CLASSIC_CONTROLLER:
		return FUNC3(buf, "classic\n");
	case WIIMOTE_EXT_BALANCE_BOARD:
		return FUNC3(buf, "balanceboard\n");
	case WIIMOTE_EXT_PRO_CONTROLLER:
		return FUNC3(buf, "procontroller\n");
	case WIIMOTE_EXT_DRUMS:
		return FUNC3(buf, "drums\n");
	case WIIMOTE_EXT_GUITAR:
		return FUNC3(buf, "guitar\n");
	case WIIMOTE_EXT_UNKNOWN:
		/* fallthrough */
	default:
		return FUNC3(buf, "unknown\n");
	}
}