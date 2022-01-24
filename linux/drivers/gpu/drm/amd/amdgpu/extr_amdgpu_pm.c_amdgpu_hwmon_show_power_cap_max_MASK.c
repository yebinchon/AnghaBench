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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  pp_handle; TYPE_1__* pp_funcs; } ;
struct amdgpu_device {TYPE_2__ powerplay; int /*<<< orphan*/  smu; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* get_power_limit ) (int /*<<< orphan*/ ,int*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct amdgpu_device* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					 struct device_attribute *attr,
					 char *buf)
{
	struct amdgpu_device *adev = FUNC0(dev);
	uint32_t limit = 0;

	if (FUNC1(adev)) {
		FUNC2(&adev->smu, &limit, true);
		return FUNC3(buf, PAGE_SIZE, "%u\n", limit * 1000000);
	} else if (adev->powerplay.pp_funcs && adev->powerplay.pp_funcs->get_power_limit) {
		adev->powerplay.pp_funcs->get_power_limit(adev->powerplay.pp_handle, &limit, true);
		return FUNC3(buf, PAGE_SIZE, "%u\n", limit * 1000000);
	} else {
		return FUNC3(buf, PAGE_SIZE, "\n");
	}
}