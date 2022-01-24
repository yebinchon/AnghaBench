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
struct intel_vgpu {TYPE_2__* gvt; } ;
struct intel_gvt_gtt_pte_ops {int /*<<< orphan*/  (* get_pfn ) (struct intel_gvt_gtt_entry*) ;} ;
struct intel_gvt_gtt_entry {int dummy; } ;
struct TYPE_3__ {struct intel_gvt_gtt_pte_ops* pte_ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_priv; TYPE_1__ gtt; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I915_GTT_PAGE_SIZE_2M ; 
 unsigned long INTEL_GVT_INVALID_ADDR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct intel_vgpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_gvt_gtt_entry*) ; 

__attribute__((used)) static int FUNC5(struct intel_vgpu *vgpu,
	struct intel_gvt_gtt_entry *entry)
{
	struct intel_gvt_gtt_pte_ops *ops = vgpu->gvt->gtt.pte_ops;
	unsigned long pfn;

	if (!FUNC0(vgpu->gvt->dev_priv, I915_GTT_PAGE_SIZE_2M))
		return 0;

	pfn = FUNC2(vgpu, ops->get_pfn(entry));
	if (pfn == INTEL_GVT_INVALID_ADDR)
		return -EINVAL;

	return FUNC1(FUNC3(pfn));
}