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
typedef  int /*<<< orphan*/  uint16_t ;
struct kgd_dev {int dummy; } ;
struct TYPE_6__ {scalar_t__ ready; } ;
struct amdgpu_ring {TYPE_3__ sched; } ;
struct TYPE_4__ {struct amdgpu_ring ring; } ;
struct TYPE_5__ {TYPE_1__ kiq; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GFXHUB_0 ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int) ; 
 scalar_t__ amdgpu_emu_mode ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kgd_dev*,int) ; 
 scalar_t__ FUNC3 (struct kgd_dev*,int) ; 
 int FUNC4 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct kgd_dev *kgd, uint16_t pasid)
{
	struct amdgpu_device *adev = (struct amdgpu_device *) kgd;
	int vmid;
	struct amdgpu_ring *ring = &adev->gfx.kiq.ring;

	if (amdgpu_emu_mode == 0 && ring->sched.ready)
		return FUNC4(adev, pasid);

	for (vmid = 0; vmid < 16; vmid++) {
		if (!FUNC0(adev, vmid))
			continue;
		if (FUNC3(kgd, vmid)) {
			if (FUNC2(kgd, vmid)
				== pasid) {
				FUNC1(adev, vmid,
						AMDGPU_GFXHUB_0, 0);
				break;
			}
		}
	}

	return 0;
}