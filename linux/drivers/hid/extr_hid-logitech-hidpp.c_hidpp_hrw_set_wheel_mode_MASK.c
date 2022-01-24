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
typedef  int u8 ;
struct hidpp_report {int dummy; } ;
struct hidpp_device {int dummy; } ;
typedef  int /*<<< orphan*/  params ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CMD_HIRES_WHEEL_SET_WHEEL_MODE ; 
 int /*<<< orphan*/  HIDPP_PAGE_HIRES_WHEEL ; 
 int FUNC1 (struct hidpp_device*,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC2 (struct hidpp_device*,int,int /*<<< orphan*/ ,int*,int,struct hidpp_report*) ; 

__attribute__((used)) static int FUNC3(struct hidpp_device *hidpp, bool invert,
	bool high_resolution, bool use_hidpp)
{
	u8 feature_index;
	u8 feature_type;
	int ret;
	u8 params[1];
	struct hidpp_report response;

	ret = FUNC1(hidpp, HIDPP_PAGE_HIRES_WHEEL,
				     &feature_index, &feature_type);
	if (ret)
		return ret;

	params[0] = (invert          ? FUNC0(2) : 0) |
		    (high_resolution ? FUNC0(1) : 0) |
		    (use_hidpp       ? FUNC0(0) : 0);

	return FUNC2(hidpp, feature_index,
					   CMD_HIRES_WHEEL_SET_WHEEL_MODE,
					   params, sizeof(params), &response);
}