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
typedef  scalar_t__ u32 ;
struct intel_guc {int dummy; } ;
struct i915_vma {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GUC_GGTT_TOP ; 
 scalar_t__ FUNC1 (struct i915_vma*) ; 
 scalar_t__ FUNC2 (struct i915_vma*) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  u64 ; 

__attribute__((used)) static inline u32 FUNC4(struct intel_guc *guc,
					struct i915_vma *vma)
{
	u32 offset = FUNC1(vma);

	FUNC0(offset < FUNC2(vma));
	FUNC0(FUNC3(u64, offset, vma->size, GUC_GGTT_TOP));

	return offset;
}