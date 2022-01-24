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
struct intel_context {int dummy; } ;
struct i915_execbuffer {int /*<<< orphan*/  gem_context; } ;
struct drm_i915_gem_execbuffer2 {unsigned int flags; } ;
struct drm_file {int dummy; } ;

/* Variables and functions */
 unsigned int I915_EXEC_RING_MASK ; 
 scalar_t__ FUNC0 (struct intel_context*) ; 
 int FUNC1 (struct intel_context*) ; 
 int FUNC2 (struct i915_execbuffer*,struct intel_context*) ; 
 unsigned int FUNC3 (struct i915_execbuffer*,struct drm_file*,struct drm_i915_gem_execbuffer2*) ; 
 struct intel_context* FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_context*) ; 

__attribute__((used)) static int
FUNC7(struct i915_execbuffer *eb,
	      struct drm_file *file,
	      struct drm_i915_gem_execbuffer2 *args)
{
	struct intel_context *ce;
	unsigned int idx;
	int err;

	if (FUNC5(eb->gem_context))
		idx = args->flags & I915_EXEC_RING_MASK;
	else
		idx = FUNC3(eb, file, args);

	ce = FUNC4(eb->gem_context, idx);
	if (FUNC0(ce))
		return FUNC1(ce);

	err = FUNC2(eb, ce);
	FUNC6(ce);

	return err;
}