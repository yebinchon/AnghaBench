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
typedef  int /*<<< orphan*/  u64 ;
struct intel_vgpu_mm {int dummy; } ;
struct intel_vgpu {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct intel_vgpu_mm* FUNC1 (struct intel_vgpu*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_vgpu_mm*) ; 

int FUNC3(struct intel_vgpu *vgpu, u64 pdps[])
{
	struct intel_vgpu_mm *mm;

	mm = FUNC1(vgpu, pdps);
	if (!mm) {
		FUNC0("fail to find ppgtt instance.\n");
		return -EINVAL;
	}
	FUNC2(mm);
	return 0;
}