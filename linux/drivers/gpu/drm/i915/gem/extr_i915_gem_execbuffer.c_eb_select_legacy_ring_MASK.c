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
struct i915_execbuffer {struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;
struct drm_i915_gem_execbuffer2 {unsigned int flags; } ;
struct drm_file {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 unsigned int I915_EXEC_BSD ; 
 unsigned int I915_EXEC_BSD_DEFAULT ; 
 unsigned int I915_EXEC_BSD_MASK ; 
 unsigned int I915_EXEC_BSD_RING1 ; 
 unsigned int I915_EXEC_BSD_RING2 ; 
 unsigned int I915_EXEC_BSD_SHIFT ; 
 unsigned int I915_EXEC_RING_MASK ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (struct drm_i915_private*,struct drm_file*) ; 
 int FUNC4 (struct drm_i915_private*) ; 
 unsigned int* user_ring_map ; 

__attribute__((used)) static unsigned int
FUNC5(struct i915_execbuffer *eb,
		      struct drm_file *file,
		      struct drm_i915_gem_execbuffer2 *args)
{
	struct drm_i915_private *i915 = eb->i915;
	unsigned int user_ring_id = args->flags & I915_EXEC_RING_MASK;

	if (user_ring_id != I915_EXEC_BSD &&
	    (args->flags & I915_EXEC_BSD_MASK)) {
		FUNC1("execbuf with non bsd ring but with invalid "
			  "bsd dispatch flags: %d\n", (int)(args->flags));
		return -1;
	}

	if (user_ring_id == I915_EXEC_BSD && FUNC4(i915) > 1) {
		unsigned int bsd_idx = args->flags & I915_EXEC_BSD_MASK;

		if (bsd_idx == I915_EXEC_BSD_DEFAULT) {
			bsd_idx = FUNC3(i915, file);
		} else if (bsd_idx >= I915_EXEC_BSD_RING1 &&
			   bsd_idx <= I915_EXEC_BSD_RING2) {
			bsd_idx >>= I915_EXEC_BSD_SHIFT;
			bsd_idx--;
		} else {
			FUNC1("execbuf with unknown bsd ring: %u\n",
				  bsd_idx);
			return -1;
		}

		return FUNC2(bsd_idx);
	}

	if (user_ring_id >= FUNC0(user_ring_map)) {
		FUNC1("execbuf with unknown ring: %u\n", user_ring_id);
		return -1;
	}

	return user_ring_map[user_ring_id];
}