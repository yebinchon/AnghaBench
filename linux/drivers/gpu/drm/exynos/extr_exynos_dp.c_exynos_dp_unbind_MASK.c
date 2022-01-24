#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct exynos_dp_device {TYPE_2__ encoder; int /*<<< orphan*/  adp; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* destroy ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct exynos_dp_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(struct device *dev, struct device *master,
			     void *data)
{
	struct exynos_dp_device *dp = FUNC1(dev);

	FUNC0(dp->adp);
	dp->encoder.funcs->destroy(&dp->encoder);
}