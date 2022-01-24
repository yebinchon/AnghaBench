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
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;
struct amdgpu_bo {scalar_t__ preferred_domains; int flags; TYPE_1__ tbo; } ;

/* Variables and functions */
 int AMDGPU_AMDKFD_USERPTR_BO ; 
 scalar_t__ AMDGPU_GEM_DOMAIN_CPU ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_bo*) ; 
 struct amdgpu_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ ,scalar_t__,int) ; 

void FUNC3(struct amdgpu_bo *bo)
{
	struct amdgpu_device *adev = FUNC1(bo->tbo.bdev);
	u32 domain = bo->preferred_domains;
	bool sg = (bo->preferred_domains == AMDGPU_GEM_DOMAIN_CPU);

	if (bo->flags & AMDGPU_AMDKFD_USERPTR_BO) {
		domain = AMDGPU_GEM_DOMAIN_CPU;
		sg = false;
	}

	FUNC2(adev, FUNC0(bo), domain, sg);
}