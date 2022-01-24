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
typedef  unsigned long long uint64_t ;
typedef  unsigned long long uint32_t ;
struct amdgpu_device {int asic_type; } ;

/* Variables and functions */
#define  CHIP_VEGA20 128 
 unsigned long long DF_V3_6_PERFMON_OVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,unsigned long long,unsigned long long*,unsigned long long,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,unsigned long long,unsigned long long*,unsigned long long*) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev,
				  uint64_t config,
				  uint64_t *count)
{
	uint32_t lo_base_addr, hi_base_addr, lo_val, hi_val;
	*count = 0;

	switch (adev->asic_type) {
	case CHIP_VEGA20:

		FUNC2(adev, config, &lo_base_addr,
				      &hi_base_addr);

		if ((lo_base_addr == 0) || (hi_base_addr == 0))
			return;

		FUNC1(adev, lo_base_addr, &lo_val,
				hi_base_addr, &hi_val);

		*count  = ((hi_val | 0ULL) << 32) | (lo_val | 0ULL);

		if (*count >= DF_V3_6_PERFMON_OVERFLOW)
			*count = 0;

		FUNC0("config=%llx addr=%08x:%08x val=%08x:%08x",
			 config, lo_base_addr, hi_base_addr, lo_val, hi_val);

		break;

	default:
		break;
	}
}