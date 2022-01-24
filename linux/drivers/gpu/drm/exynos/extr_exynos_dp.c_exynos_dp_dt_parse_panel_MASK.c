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
struct exynos_dp_device {TYPE_1__* dev; int /*<<< orphan*/  vm; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  OF_USE_NATIVE_MODE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct exynos_dp_device *dp)
{
	int ret;

	ret = FUNC1(dp->dev->of_node, &dp->vm, OF_USE_NATIVE_MODE);
	if (ret) {
		FUNC0(dp->dev,
			      "failed: of_get_videomode() : %d\n", ret);
		return ret;
	}
	return 0;
}