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
 int /*<<< orphan*/  GRBM_GFX_INDEX ; 
 int /*<<< orphan*/  INSTANCE_BROADCAST_WRITES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SE_BROADCAST_WRITES ; 
 int /*<<< orphan*/  SH_BROADCAST_WRITES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct amdgpu_device* FUNC2 (struct kgd_dev*) ; 
 int /*<<< orphan*/  mmGRBM_GFX_INDEX ; 
 int /*<<< orphan*/  mmSQ_CMD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct kgd_dev *kgd,
					uint32_t gfx_index_val,
					uint32_t sq_cmd)
{
	struct amdgpu_device *adev = FUNC2(kgd);
	uint32_t data = 0;

	FUNC3(&adev->grbm_idx_mutex);

	FUNC1(mmGRBM_GFX_INDEX, gfx_index_val);
	FUNC1(mmSQ_CMD, sq_cmd);

	data = FUNC0(data, GRBM_GFX_INDEX,
		INSTANCE_BROADCAST_WRITES, 1);
	data = FUNC0(data, GRBM_GFX_INDEX,
		SH_BROADCAST_WRITES, 1);
	data = FUNC0(data, GRBM_GFX_INDEX,
		SE_BROADCAST_WRITES, 1);

	FUNC1(mmGRBM_GFX_INDEX, data);
	FUNC4(&adev->grbm_idx_mutex);

	return 0;
}