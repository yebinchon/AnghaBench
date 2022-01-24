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
typedef  scalar_t__ u64 ;
struct intel_vgpu {int dummy; } ;
struct TYPE_2__ {int mapped; int /*<<< orphan*/ * gfn; scalar_t__ va; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ INTEL_GVT_INVALID_ADDR ; 
 int INTEL_GVT_OPREGION_PAGES ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct intel_vgpu*,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 TYPE_1__* FUNC3 (struct intel_vgpu*) ; 

__attribute__((used)) static int FUNC4(struct intel_vgpu *vgpu, bool map)
{
	u64 mfn;
	int i, ret;

	for (i = 0; i < INTEL_GVT_OPREGION_PAGES; i++) {
		mfn = FUNC2(FUNC3(vgpu)->va
			+ i * PAGE_SIZE);
		if (mfn == INTEL_GVT_INVALID_ADDR) {
			FUNC0("fail to get MFN from VA\n");
			return -EINVAL;
		}
		ret = FUNC1(vgpu,
				FUNC3(vgpu)->gfn[i],
				mfn, 1, map);
		if (ret) {
			FUNC0("fail to map GFN to MFN, errno: %d\n",
				ret);
			return ret;
		}
	}

	FUNC3(vgpu)->mapped = map;

	return 0;
}