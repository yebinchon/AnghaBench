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
struct seq_file {int /*<<< orphan*/  private; } ;
struct i915_vma {int /*<<< orphan*/  obj; } ;
struct i915_fence_reg {int /*<<< orphan*/  pin_count; struct i915_vma* vma; } ;
struct TYPE_2__ {unsigned int num_fences; struct i915_fence_reg* fence_regs; } ;
struct drm_i915_private {TYPE_1__ ggtt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC8(struct seq_file *m, void *data)
{
	struct drm_i915_private *i915 = FUNC2(m->private);
	unsigned int i;

	FUNC5(m, "Total fences = %d\n", i915->ggtt.num_fences);

	FUNC3();
	for (i = 0; i < i915->ggtt.num_fences; i++) {
		struct i915_fence_reg *reg = &i915->ggtt.fence_regs[i];
		struct i915_vma *vma = reg->vma;

		FUNC5(m, "Fence %d, pin count = %d, object = ",
			   i, FUNC0(&reg->pin_count));
		if (!vma)
			FUNC7(m, "unused");
		else
			FUNC1(m, vma->obj);
		FUNC6(m, '\n');
	}
	FUNC4();

	return 0;
}