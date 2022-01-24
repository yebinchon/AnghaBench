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
struct intel_vgpu_submission {void** i915_context_pdps; void* i915_context_pml4; } ;
struct i915_ppgtt {struct i915_page_directory* const pd; int /*<<< orphan*/  vm; } ;
struct i915_page_directory {int dummy; } ;

/* Variables and functions */
 int GEN8_3LVL_PDPES ; 
 struct i915_page_directory* FUNC0 (struct i915_page_directory* const,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (struct i915_page_directory* const) ; 

__attribute__((used)) static void
FUNC3(struct intel_vgpu_submission *s,
			     struct i915_ppgtt *ppgtt)
{
	int i;

	if (FUNC1(&ppgtt->vm)) {
		s->i915_context_pml4 = FUNC2(ppgtt->pd);
	} else {
		for (i = 0; i < GEN8_3LVL_PDPES; i++) {
			struct i915_page_directory * const pd =
				FUNC0(ppgtt->pd, i);

			s->i915_context_pdps[i] = FUNC2(pd);
		}
	}
}