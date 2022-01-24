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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ l2_present; scalar_t__ stack_present; scalar_t__ shader_present; scalar_t__ tiler_present; } ;
struct panfrost_device {int /*<<< orphan*/  dev; TYPE_1__ features; scalar_t__ iomem; } ;

/* Variables and functions */
 int /*<<< orphan*/  L2_PWRON_LO ; 
 scalar_t__ L2_READY_LO ; 
 int /*<<< orphan*/  SHADER_PWRON_LO ; 
 scalar_t__ SHADER_READY_LO ; 
 int /*<<< orphan*/  STACK_PWRON_LO ; 
 scalar_t__ STACK_READY_LO ; 
 int /*<<< orphan*/  TILER_PWRON_LO ; 
 scalar_t__ TILER_READY_LO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct panfrost_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (scalar_t__,scalar_t__,int,int,int) ; 

void FUNC3(struct panfrost_device *pfdev)
{
	int ret;
	u32 val;

	/* Just turn on everything for now */
	FUNC1(pfdev, L2_PWRON_LO, pfdev->features.l2_present);
	ret = FUNC2(pfdev->iomem + L2_READY_LO,
		val, val == pfdev->features.l2_present, 100, 1000);

	FUNC1(pfdev, STACK_PWRON_LO, pfdev->features.stack_present);
	ret |= FUNC2(pfdev->iomem + STACK_READY_LO,
		val, val == pfdev->features.stack_present, 100, 1000);

	FUNC1(pfdev, SHADER_PWRON_LO, pfdev->features.shader_present);
	ret |= FUNC2(pfdev->iomem + SHADER_READY_LO,
		val, val == pfdev->features.shader_present, 100, 1000);

	FUNC1(pfdev, TILER_PWRON_LO, pfdev->features.tiler_present);
	ret |= FUNC2(pfdev->iomem + TILER_READY_LO,
		val, val == pfdev->features.tiler_present, 100, 1000);

	if (ret)
		FUNC0(pfdev->dev, "error powering up gpu");
}