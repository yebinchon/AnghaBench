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
union ec_response_get_next_data {int /*<<< orphan*/  switches; } ;
struct cros_ec_keyb {struct cros_ec_device* ec; } ;
struct cros_ec_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EC_MKBP_EVENT_SWITCH ; 
 int /*<<< orphan*/  EC_MKBP_INFO_CURRENT ; 
 int /*<<< orphan*/  EV_SW ; 
 int FUNC0 (struct cros_ec_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union ec_response_get_next_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cros_ec_keyb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct cros_ec_keyb *ckdev)
{
	struct cros_ec_device *ec_dev = ckdev->ec;
	union ec_response_get_next_data event_data = {};
	int ret;

	ret = FUNC0(ec_dev, EC_MKBP_INFO_CURRENT,
				EC_MKBP_EVENT_SWITCH, &event_data,
				sizeof(event_data.switches));
	if (ret)
		return ret;

	FUNC1(ckdev, EV_SW,
			       FUNC2(&event_data.switches));

	return 0;
}