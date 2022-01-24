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
typedef  scalar_t__ u8 ;
typedef  size_t u32 ;
struct kv_power_info {TYPE_1__* graphics_level; } ;
struct atom_clock_dividers {scalar_t__ post_div; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  SclkFrequency; scalar_t__ SclkDid; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMPUTE_ENGINE_PLL_PARAM ; 
 int FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ ,size_t,int,struct atom_clock_dividers*) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 struct kv_power_info* FUNC2 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC3(struct amdgpu_device *adev,
				u32 index, u32 sclk)
{
	struct kv_power_info *pi = FUNC2(adev);
	struct atom_clock_dividers dividers;
	int ret;

	ret = FUNC0(adev, COMPUTE_ENGINE_PLL_PARAM,
						 sclk, false, &dividers);
	if (ret)
		return ret;

	pi->graphics_level[index].SclkDid = (u8)dividers.post_div;
	pi->graphics_level[index].SclkFrequency = FUNC1(sclk);

	return 0;
}