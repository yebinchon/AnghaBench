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
struct rockchip_dp_device {int /*<<< orphan*/  adp; TYPE_2__ encoder; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* destroy ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct rockchip_dp_device* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(struct device *dev, struct device *master,
			       void *data)
{
	struct rockchip_dp_device *dp = FUNC2(dev);

	FUNC1(dp->adp);
	dp->encoder.funcs->destroy(&dp->encoder);

	dp->adp = FUNC0(-ENODEV);
}