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
struct intel_uc {int /*<<< orphan*/  load_err_log; } ;
struct drm_i915_gem_object {int dummy; } ;

/* Variables and functions */
 struct drm_i915_gem_object* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_gem_object*) ; 

__attribute__((used)) static void FUNC2(struct intel_uc *uc)
{
	struct drm_i915_gem_object *log = FUNC0(&uc->load_err_log);

	if (log)
		FUNC1(log);
}