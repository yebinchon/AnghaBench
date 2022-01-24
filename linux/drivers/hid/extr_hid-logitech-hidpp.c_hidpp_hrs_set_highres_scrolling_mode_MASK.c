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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/ * params; } ;
struct hidpp_report {TYPE_1__ fap; } ;
struct hidpp_device {int dummy; } ;
typedef  int /*<<< orphan*/  params ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CMD_HI_RESOLUTION_SCROLLING_SET_HIGHRES_SCROLLING_MODE ; 
 int /*<<< orphan*/  HIDPP_PAGE_HI_RESOLUTION_SCROLLING ; 
 int FUNC1 (struct hidpp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct hidpp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct hidpp_report*) ; 

__attribute__((used)) static int FUNC3(struct hidpp_device *hidpp,
	bool enabled, u8 *multiplier)
{
	u8 feature_index;
	u8 feature_type;
	int ret;
	u8 params[1];
	struct hidpp_report response;

	ret = FUNC1(hidpp,
				     HIDPP_PAGE_HI_RESOLUTION_SCROLLING,
				     &feature_index,
				     &feature_type);
	if (ret)
		return ret;

	params[0] = enabled ? FUNC0(0) : 0;
	ret = FUNC2(hidpp, feature_index,
					  CMD_HI_RESOLUTION_SCROLLING_SET_HIGHRES_SCROLLING_MODE,
					  params, sizeof(params), &response);
	if (ret)
		return ret;
	*multiplier = response.fap.params[1];
	return 0;
}