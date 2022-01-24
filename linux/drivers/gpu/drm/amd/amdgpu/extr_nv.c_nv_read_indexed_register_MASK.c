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
typedef  int u32 ;
struct amdgpu_device {int /*<<< orphan*/  grbm_idx_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint32_t FUNC4(struct amdgpu_device *adev, u32 se_num,
					 u32 sh_num, u32 reg_offset)
{
	uint32_t val;

	FUNC2(&adev->grbm_idx_mutex);
	if (se_num != 0xffffffff || sh_num != 0xffffffff)
		FUNC1(adev, se_num, sh_num, 0xffffffff);

	val = FUNC0(reg_offset);

	if (se_num != 0xffffffff || sh_num != 0xffffffff)
		FUNC1(adev, 0xffffffff, 0xffffffff, 0xffffffff);
	FUNC3(&adev->grbm_idx_mutex);
	return val;
}