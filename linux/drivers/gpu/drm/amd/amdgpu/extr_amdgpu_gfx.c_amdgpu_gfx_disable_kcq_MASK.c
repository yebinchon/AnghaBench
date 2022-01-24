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
struct amdgpu_ring {int dummy; } ;
struct amdgpu_kiq {TYPE_1__* pmf; struct amdgpu_ring ring; } ;
struct TYPE_4__ {int num_compute_rings; int /*<<< orphan*/ * compute_ring; struct amdgpu_kiq kiq; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;
struct TYPE_3__ {int unmap_queues_size; int /*<<< orphan*/  (* kiq_unmap_queues ) (struct amdgpu_ring*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  RESET_QUEUES ; 
 scalar_t__ FUNC0 (struct amdgpu_ring*,int) ; 
 int FUNC1 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_ring*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct amdgpu_device *adev)
{
	struct amdgpu_kiq *kiq = &adev->gfx.kiq;
	struct amdgpu_ring *kiq_ring = &kiq->ring;
	int i;

	if (!kiq->pmf || !kiq->pmf->kiq_unmap_queues)
		return -EINVAL;

	if (FUNC0(kiq_ring, kiq->pmf->unmap_queues_size *
					adev->gfx.num_compute_rings))
		return -ENOMEM;

	for (i = 0; i < adev->gfx.num_compute_rings; i++)
		kiq->pmf->kiq_unmap_queues(kiq_ring, &adev->gfx.compute_ring[i],
					   RESET_QUEUES, 0, 0);

	return FUNC1(kiq_ring);
}