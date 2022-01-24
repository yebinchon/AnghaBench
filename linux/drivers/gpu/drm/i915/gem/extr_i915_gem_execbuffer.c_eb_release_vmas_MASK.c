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
struct i915_vma {unsigned int* exec_flags; } ;
struct i915_execbuffer {unsigned int buffer_count; unsigned int* flags; struct i915_vma** vma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int __EXEC_OBJECT_HAS_PIN ; 
 unsigned int __EXEC_OBJECT_HAS_REF ; 
 int /*<<< orphan*/  FUNC1 (struct i915_vma*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_vma*) ; 

__attribute__((used)) static void FUNC3(const struct i915_execbuffer *eb)
{
	const unsigned int count = eb->buffer_count;
	unsigned int i;

	for (i = 0; i < count; i++) {
		struct i915_vma *vma = eb->vma[i];
		unsigned int flags = eb->flags[i];

		if (!vma)
			break;

		FUNC0(vma->exec_flags != &eb->flags[i]);
		vma->exec_flags = NULL;
		eb->vma[i] = NULL;

		if (flags & __EXEC_OBJECT_HAS_PIN)
			FUNC1(vma, flags);

		if (flags & __EXEC_OBJECT_HAS_REF)
			FUNC2(vma);
	}
}