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
struct i915_vma {int /*<<< orphan*/  active; } ;
struct drm_i915_error_object {int dummy; } ;
struct capture_vma {void** slot; struct capture_vma* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_MAYFAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC2 (struct capture_vma*) ; 
 struct capture_vma* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct capture_vma *
FUNC4(struct capture_vma *next,
	    struct i915_vma *vma,
	    struct drm_i915_error_object **out)
{
	struct capture_vma *c;

	*out = NULL;
	if (!vma)
		return next;

	c = FUNC3(sizeof(*c), ATOMIC_MAYFAIL);
	if (!c)
		return next;

	if (!FUNC0(&vma->active)) {
		FUNC2(c);
		return next;
	}

	c->slot = (void **)out;
	*c->slot = FUNC1(vma);

	c->next = next;
	return c;
}