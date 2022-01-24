#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  virtual_ggtt; } ;
struct intel_vgpu_mm {TYPE_1__ ggtt_mm; int /*<<< orphan*/  type; } ;
struct intel_vgpu {TYPE_3__* gvt; } ;
struct TYPE_5__ {int /*<<< orphan*/  gtt_entry_size; } ;
struct TYPE_6__ {TYPE_2__ device_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct intel_vgpu_mm* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long I915_GTT_PAGE_SHIFT ; 
 int /*<<< orphan*/  INTEL_GVT_MM_GGTT ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (TYPE_3__*) ; 
 struct intel_vgpu_mm* FUNC3 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_vgpu_mm*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct intel_vgpu_mm *FUNC6(struct intel_vgpu *vgpu)
{
	struct intel_vgpu_mm *mm;
	unsigned long nr_entries;

	mm = FUNC3(vgpu);
	if (!mm)
		return FUNC0(-ENOMEM);

	mm->type = INTEL_GVT_MM_GGTT;

	nr_entries = FUNC2(vgpu->gvt) >> I915_GTT_PAGE_SHIFT;
	mm->ggtt_mm.virtual_ggtt =
		FUNC5(FUNC1(nr_entries,
				   vgpu->gvt->device_info.gtt_entry_size));
	if (!mm->ggtt_mm.virtual_ggtt) {
		FUNC4(mm);
		return FUNC0(-ENOMEM);
	}

	return mm;
}