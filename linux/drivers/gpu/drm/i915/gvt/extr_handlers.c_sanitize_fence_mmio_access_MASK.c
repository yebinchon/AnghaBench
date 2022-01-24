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
struct intel_vgpu {int /*<<< orphan*/  pv_notified; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GVT_FAILSAFE_UNSUPPORTED_GUEST ; 
 int /*<<< orphan*/  FUNC0 (struct intel_vgpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC3 (struct intel_vgpu*) ; 

__attribute__((used)) static int FUNC4(struct intel_vgpu *vgpu,
		unsigned int fence_num, void *p_data, unsigned int bytes)
{
	unsigned int max_fence = FUNC3(vgpu);

	if (fence_num >= max_fence) {
		FUNC1("access oob fence reg %d/%d\n",
			     fence_num, max_fence);

		/* When guest access oob fence regs without access
		 * pv_info first, we treat guest not supporting GVT,
		 * and we will let vgpu enter failsafe mode.
		 */
		if (!vgpu->pv_notified)
			FUNC0(vgpu,
					GVT_FAILSAFE_UNSUPPORTED_GUEST);

		FUNC2(p_data, 0, bytes);
		return -EINVAL;
	}
	return 0;
}