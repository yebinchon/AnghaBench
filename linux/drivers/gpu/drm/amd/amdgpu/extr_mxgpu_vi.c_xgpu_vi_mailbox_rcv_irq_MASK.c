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
struct amdgpu_iv_entry {int dummy; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flr_work; } ;
struct amdgpu_device {TYPE_1__ virt; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDH_FLR_NOTIFICATION ; 
 int /*<<< orphan*/  amdgpu_gpu_recovery ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct amdgpu_device *adev,
				   struct amdgpu_irq_src *source,
				   struct amdgpu_iv_entry *entry)
{
	int r;

	/* trigger gpu-reset by hypervisor only if TDR disbaled */
	if (!amdgpu_gpu_recovery) {
		/* see what event we get */
		r = FUNC1(adev, IDH_FLR_NOTIFICATION);

		/* only handle FLR_NOTIFY now */
		if (!r)
			FUNC0(&adev->virt.flr_work);
	}

	return 0;
}