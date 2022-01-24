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

/* Variables and functions */
 int /*<<< orphan*/  CNL_REVID_A0 ; 
 scalar_t__ FUNC0 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC4(struct drm_i915_private *i915,
					 u32 guc_wopcm_base, u32 guc_wopcm_size,
					 u32 huc_fw_size)
{
	if (FUNC1(i915, 9) && !FUNC2(i915, guc_wopcm_base,
						     guc_wopcm_size))
		return false;

	if ((FUNC1(i915, 9) ||
	     FUNC0(i915, CNL_REVID_A0, CNL_REVID_A0)) &&
	    !FUNC3(i915, guc_wopcm_size, huc_fw_size))
		return false;

	return true;
}