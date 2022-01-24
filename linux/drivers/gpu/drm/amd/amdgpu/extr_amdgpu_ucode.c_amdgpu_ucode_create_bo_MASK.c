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
struct TYPE_2__ {scalar_t__ load_type; int /*<<< orphan*/  fw_size; int /*<<< orphan*/  fw_buf_ptr; int /*<<< orphan*/  fw_buf; int /*<<< orphan*/  fw_buf_mc; } ;
struct amdgpu_device {TYPE_1__ firmware; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_FW_LOAD_DIRECT ; 
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_GTT ; 
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_VRAM ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct amdgpu_device *adev)
{
	if (adev->firmware.load_type != AMDGPU_FW_LOAD_DIRECT) {
		FUNC0(adev, adev->firmware.fw_size, PAGE_SIZE,
			FUNC1(adev) ? AMDGPU_GEM_DOMAIN_VRAM : AMDGPU_GEM_DOMAIN_GTT,
			&adev->firmware.fw_buf,
			&adev->firmware.fw_buf_mc,
			&adev->firmware.fw_buf_ptr);
		if (!adev->firmware.fw_buf) {
			FUNC2(adev->dev, "failed to create kernel buffer for firmware.fw_buf\n");
			return -ENOMEM;
		} else if (FUNC1(adev)) {
			FUNC3(adev->firmware.fw_buf_ptr, 0, adev->firmware.fw_size);
		}
	}
	return 0;
}