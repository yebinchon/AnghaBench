#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int /*<<< orphan*/  grbm_idx_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  GRBM_GFX_INDEX ; 
 int /*<<< orphan*/  INSTANCE_BROADCAST_WRITES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SE_BROADCAST_WRITES ; 
 int /*<<< orphan*/  SH_BROADCAST_WRITES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct amdgpu_device* FUNC4 (struct kgd_dev*) ; 
 int /*<<< orphan*/  mmGRBM_GFX_INDEX ; 
 int /*<<< orphan*/  mmSQ_CMD ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct kgd_dev *kgd,
					uint32_t gfx_index_val,
					uint32_t sq_cmd)
{
	struct amdgpu_device *adev = FUNC4(kgd);
	uint32_t data = 0;

	FUNC5(&adev->grbm_idx_mutex);

	FUNC3(GC, 0, mmGRBM_GFX_INDEX, gfx_index_val);
	FUNC2(FUNC1(GC, 0, mmSQ_CMD), sq_cmd);

	data = FUNC0(data, GRBM_GFX_INDEX,
		INSTANCE_BROADCAST_WRITES, 1);
	data = FUNC0(data, GRBM_GFX_INDEX,
		SH_BROADCAST_WRITES, 1);
	data = FUNC0(data, GRBM_GFX_INDEX,
		SE_BROADCAST_WRITES, 1);

	FUNC3(GC, 0, mmGRBM_GFX_INDEX, data);
	FUNC6(&adev->grbm_idx_mutex);

	return 0;
}