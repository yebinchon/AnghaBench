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
struct hidpp_device {int /*<<< orphan*/  hid_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_HIRES_WHEEL_GET_WHEEL_CAPABILITY ; 
 int /*<<< orphan*/  HIDPP_PAGE_HIRES_WHEEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct hidpp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct hidpp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct hidpp_report*) ; 

__attribute__((used)) static int FUNC3(struct hidpp_device *hidpp,
	u8 *multiplier)
{
	u8 feature_index;
	u8 feature_type;
	int ret;
	struct hidpp_report response;

	ret = FUNC1(hidpp, HIDPP_PAGE_HIRES_WHEEL,
				     &feature_index, &feature_type);
	if (ret)
		goto return_default;

	ret = FUNC2(hidpp, feature_index,
					  CMD_HIRES_WHEEL_GET_WHEEL_CAPABILITY,
					  NULL, 0, &response);
	if (ret)
		goto return_default;

	*multiplier = response.fap.params[0];
	return 0;
return_default:
	FUNC0(hidpp->hid_dev,
		 "Couldn't get wheel multiplier (error %d)\n", ret);
	return ret;
}