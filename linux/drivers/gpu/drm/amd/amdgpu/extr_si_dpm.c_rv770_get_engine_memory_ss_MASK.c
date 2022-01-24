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
struct rv7xx_power_info {int dynamic_ss; void* mclk_ss; void* sclk_ss; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_atom_ss {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASIC_INTERNAL_ENGINE_SS ; 
 int /*<<< orphan*/  ASIC_INTERNAL_MEMORY_SS ; 
 void* FUNC0 (struct amdgpu_device*,struct amdgpu_atom_ss*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rv7xx_power_info* FUNC1 (struct amdgpu_device*) ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev)
{
	struct rv7xx_power_info *pi = FUNC1(adev);
	struct amdgpu_atom_ss ss;

	pi->sclk_ss = FUNC0(adev, &ss,
						       ASIC_INTERNAL_ENGINE_SS, 0);
	pi->mclk_ss = FUNC0(adev, &ss,
						       ASIC_INTERNAL_MEMORY_SS, 0);

	if (pi->sclk_ss || pi->mclk_ss)
		pi->dynamic_ss = true;
	else
		pi->dynamic_ss = false;
}