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
typedef  int uint32_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int /*<<< orphan*/  grbm_idx_mutex; } ;

/* Variables and functions */
 int GRBM_GFX_INDEX__INSTANCE_BROADCAST_WRITES_MASK ; 
 int GRBM_GFX_INDEX__SE_BROADCAST_WRITES_MASK ; 
 int GRBM_GFX_INDEX__SH_BROADCAST_WRITES_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct amdgpu_device* FUNC1 (struct kgd_dev*) ; 
 int /*<<< orphan*/  mmGRBM_GFX_INDEX ; 
 int /*<<< orphan*/  mmSQ_CMD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct kgd_dev *kgd,
					uint32_t gfx_index_val,
					uint32_t sq_cmd)
{
	struct amdgpu_device *adev = FUNC1(kgd);
	uint32_t data;

	FUNC2(&adev->grbm_idx_mutex);

	FUNC0(mmGRBM_GFX_INDEX, gfx_index_val);
	FUNC0(mmSQ_CMD, sq_cmd);

	/*  Restore the GRBM_GFX_INDEX register  */

	data = GRBM_GFX_INDEX__INSTANCE_BROADCAST_WRITES_MASK |
		GRBM_GFX_INDEX__SH_BROADCAST_WRITES_MASK |
		GRBM_GFX_INDEX__SE_BROADCAST_WRITES_MASK;

	FUNC0(mmGRBM_GFX_INDEX, data);

	FUNC3(&adev->grbm_idx_mutex);

	return 0;
}