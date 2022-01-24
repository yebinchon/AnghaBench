#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct drm_device {struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {TYPE_1__* pp_funcs; } ;
struct TYPE_7__ {TYPE_4__* ops; } ;
struct amdgpu_device {TYPE_2__ powerplay; int /*<<< orphan*/  smu; TYPE_3__ virt; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_8__ {int /*<<< orphan*/  (* get_pp_clk ) (struct amdgpu_device*,int /*<<< orphan*/ ,char*) ;} ;
struct TYPE_5__ {scalar_t__ print_clock_levels; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PP_MCLK ; 
 int /*<<< orphan*/  SMU_MCLK ; 
 scalar_t__ FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct amdgpu_device*) ; 
 struct drm_device* FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
		struct device_attribute *attr,
		char *buf)
{
	struct drm_device *ddev = FUNC3(dev);
	struct amdgpu_device *adev = ddev->dev_private;

	if (FUNC2(adev) && FUNC0(adev) &&
	    adev->virt.ops->get_pp_clk)
		return adev->virt.ops->get_pp_clk(adev, PP_MCLK, buf);

	if (FUNC4(adev))
		return FUNC5(&adev->smu, SMU_MCLK, buf);
	else if (adev->powerplay.pp_funcs->print_clock_levels)
		return FUNC1(adev, PP_MCLK, buf);
	else
		return FUNC6(buf, PAGE_SIZE, "\n");
}