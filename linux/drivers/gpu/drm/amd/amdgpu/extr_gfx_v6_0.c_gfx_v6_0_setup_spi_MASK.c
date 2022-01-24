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
typedef  int u32 ;
struct TYPE_3__ {int max_shader_engines; int max_sh_per_se; } ;
struct TYPE_4__ {TYPE_1__ config; } ;
struct amdgpu_device {int /*<<< orphan*/  grbm_idx_mutex; TYPE_2__ gfx; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int,int,int) ; 
 int /*<<< orphan*/  mmSPI_STATIC_THREAD_MGMT_3 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct amdgpu_device *adev)
{
	int i, j, k;
	u32 data, mask;
	u32 active_cu = 0;

	FUNC4(&adev->grbm_idx_mutex);
	for (i = 0; i < adev->gfx.config.max_shader_engines; i++) {
		for (j = 0; j < adev->gfx.config.max_sh_per_se; j++) {
			FUNC3(adev, i, j, 0xffffffff);
			data = FUNC0(mmSPI_STATIC_THREAD_MGMT_3);
			active_cu = FUNC2(adev);

			mask = 1;
			for (k = 0; k < 16; k++) {
				mask <<= k;
				if (active_cu & mask) {
					data &= ~mask;
					FUNC1(mmSPI_STATIC_THREAD_MGMT_3, data);
					break;
				}
			}
		}
	}
	FUNC3(adev, 0xffffffff, 0xffffffff, 0xffffffff);
	FUNC5(&adev->grbm_idx_mutex);
}