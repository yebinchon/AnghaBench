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
typedef  int uint32_t ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pp_funcs; } ;
struct amdgpu_device {TYPE_2__ powerplay; int /*<<< orphan*/  smu; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_3__ {scalar_t__ get_sclk_od; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SMU_OD_SCLK ; 
 int FUNC0 (struct amdgpu_device*) ; 
 struct drm_device* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct amdgpu_device*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
		struct device_attribute *attr,
		char *buf)
{
	struct drm_device *ddev = FUNC1(dev);
	struct amdgpu_device *adev = ddev->dev_private;
	uint32_t value = 0;

	if (FUNC2(adev))
		value = FUNC3(&(adev->smu), SMU_OD_SCLK);
	else if (adev->powerplay.pp_funcs->get_sclk_od)
		value = FUNC0(adev);

	return FUNC4(buf, PAGE_SIZE, "%d\n", value);
}