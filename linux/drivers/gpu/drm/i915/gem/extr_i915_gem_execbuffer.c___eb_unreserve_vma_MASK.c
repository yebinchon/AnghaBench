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
struct i915_vma {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int __EXEC_OBJECT_HAS_FENCE ; 
 unsigned int __EXEC_OBJECT_HAS_PIN ; 
 int /*<<< orphan*/  FUNC1 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_vma*) ; 
 scalar_t__ FUNC3 (unsigned int) ; 

__attribute__((used)) static inline void FUNC4(struct i915_vma *vma, unsigned int flags)
{
	FUNC0(!(flags & __EXEC_OBJECT_HAS_PIN));

	if (FUNC3(flags & __EXEC_OBJECT_HAS_FENCE))
		FUNC2(vma);

	FUNC1(vma);
}