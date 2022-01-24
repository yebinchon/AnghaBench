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
struct TYPE_2__ {int stride; } ;
struct intel_fbc_state_cache {TYPE_1__ fb; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_fbc_state_cache*,int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct drm_i915_private *dev_priv,
					struct intel_fbc_state_cache *cache)
{
	int lines;

	FUNC2(cache, NULL, &lines);
	if (FUNC1(dev_priv, 7))
		lines = FUNC3(lines, 2048);
	else if (FUNC0(dev_priv) >= 8)
		lines = FUNC3(lines, 2560);

	/* Hardware needs the full buffer stride, not just the active area. */
	return lines * cache->fb.stride;
}