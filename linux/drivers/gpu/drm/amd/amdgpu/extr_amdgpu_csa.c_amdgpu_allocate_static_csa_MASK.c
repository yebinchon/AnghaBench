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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {void* csa_cpu_addr; } ;
struct amdgpu_device {TYPE_1__ virt; } ;
struct amdgpu_bo {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct amdgpu_bo**,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct amdgpu_device *adev, struct amdgpu_bo **bo,
				u32 domain, uint32_t size)
{
	int r;
	void *ptr;

	r = FUNC0(adev, size, PAGE_SIZE,
				domain, bo,
				NULL, &ptr);
	if (!*bo)
		return -ENOMEM;

	FUNC1(ptr, 0, size);
	adev->virt.csa_cpu_addr = ptr;
	return 0;
}