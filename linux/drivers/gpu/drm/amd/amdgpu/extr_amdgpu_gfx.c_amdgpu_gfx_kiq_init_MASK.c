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
typedef  int /*<<< orphan*/  u32 ;
struct amdgpu_kiq {int /*<<< orphan*/  eop_obj; int /*<<< orphan*/  eop_gpu_addr; } ;
struct TYPE_2__ {struct amdgpu_kiq kiq; } ;
struct amdgpu_device {int /*<<< orphan*/  dev; TYPE_1__ gfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_GTT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct amdgpu_device*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct amdgpu_device *adev,
			unsigned hpd_size)
{
	int r;
	u32 *hpd;
	struct amdgpu_kiq *kiq = &adev->gfx.kiq;

	r = FUNC0(adev, hpd_size, PAGE_SIZE,
				    AMDGPU_GEM_DOMAIN_GTT, &kiq->eop_obj,
				    &kiq->eop_gpu_addr, (void **)&hpd);
	if (r) {
		FUNC4(adev->dev, "failed to create KIQ bo (%d).\n", r);
		return r;
	}

	FUNC5(hpd, 0, hpd_size);

	r = FUNC2(kiq->eop_obj, true);
	if (FUNC6(r != 0))
		FUNC4(adev->dev, "(%d) reserve kiq eop bo failed\n", r);
	FUNC1(kiq->eop_obj);
	FUNC3(kiq->eop_obj);

	return 0;
}