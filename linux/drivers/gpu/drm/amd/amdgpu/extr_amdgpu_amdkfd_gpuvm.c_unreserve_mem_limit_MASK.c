#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ u32 ;
struct TYPE_5__ {scalar_t__ vram_used; } ;
struct TYPE_4__ {int /*<<< orphan*/  bdev; } ;
struct amdgpu_device {TYPE_2__ kfd; TYPE_1__ mman; } ;
struct amdgpu_bo {int dummy; } ;
struct TYPE_6__ {scalar_t__ system_mem_used; scalar_t__ ttm_mem_used; int /*<<< orphan*/  mem_limit_lock; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_GEM_DOMAIN_CPU ; 
 scalar_t__ AMDGPU_GEM_DOMAIN_GTT ; 
 scalar_t__ AMDGPU_GEM_DOMAIN_VRAM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 TYPE_3__ kfd_mem_limit ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev,
		uint64_t size, u32 domain, bool sg)
{
	size_t acc_size;

	acc_size = FUNC3(&adev->mman.bdev, size,
				       sizeof(struct amdgpu_bo));

	FUNC1(&kfd_mem_limit.mem_limit_lock);
	if (domain == AMDGPU_GEM_DOMAIN_GTT) {
		kfd_mem_limit.system_mem_used -= (acc_size + size);
		kfd_mem_limit.ttm_mem_used -= (acc_size + size);
	} else if (domain == AMDGPU_GEM_DOMAIN_CPU && !sg) {
		kfd_mem_limit.system_mem_used -= (acc_size + size);
		kfd_mem_limit.ttm_mem_used -= acc_size;
	} else {
		kfd_mem_limit.system_mem_used -= acc_size;
		kfd_mem_limit.ttm_mem_used -= acc_size;
		if (domain == AMDGPU_GEM_DOMAIN_VRAM) {
			adev->kfd.vram_used -= size;
			FUNC0(adev->kfd.vram_used < 0,
				  "kfd VRAM memory accounting unbalanced");
		}
	}
	FUNC0(kfd_mem_limit.system_mem_used < 0,
		  "kfd system memory accounting unbalanced");
	FUNC0(kfd_mem_limit.ttm_mem_used < 0,
		  "kfd TTM memory accounting unbalanced");

	FUNC2(&kfd_mem_limit.mem_limit_lock);
}