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
struct analogix_dp_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct analogix_dp_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct analogix_dp_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct analogix_dp_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct analogix_dp_device*,int) ; 

__attribute__((used)) static void
FUNC4(struct analogix_dp_device *dp,
				       int pre_emphasis, int lane)
{
	switch (lane) {
	case 0:
		FUNC0(dp, pre_emphasis);
		break;
	case 1:
		FUNC1(dp, pre_emphasis);
		break;

	case 2:
		FUNC2(dp, pre_emphasis);
		break;

	case 3:
		FUNC3(dp, pre_emphasis);
		break;
	}
}