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
typedef  int /*<<< orphan*/  u32 ;
struct drm_i915_private {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
typedef  enum intel_pipe_crc_source { ____Placeholder_intel_pipe_crc_source } intel_pipe_crc_source ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*,int,int) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 int FUNC5 (int*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct drm_i915_private*,int,int*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct drm_i915_private*,int,int*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct drm_i915_private*,int,int*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct drm_i915_private*,int,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct drm_i915_private *dev_priv,
			       enum pipe pipe,
			       enum intel_pipe_crc_source *source, u32 *val)
{
	if (FUNC2(dev_priv, 2))
		return FUNC5(source, val);
	else if (FUNC0(dev_priv) < 5)
		return FUNC6(dev_priv, pipe, source, val);
	else if (FUNC4(dev_priv) || FUNC1(dev_priv))
		return FUNC10(dev_priv, pipe, source, val);
	else if (FUNC3(dev_priv, 5, 6))
		return FUNC7(source, val);
	else if (FUNC0(dev_priv) < 9)
		return FUNC8(dev_priv, pipe, source, val);
	else
		return FUNC9(dev_priv, pipe, source, val);
}