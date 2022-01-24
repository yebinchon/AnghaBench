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
typedef  enum tc_port { ____Placeholder_tc_port } tc_port ;
typedef  enum port { ____Placeholder_port } port ;
typedef  enum phy { ____Placeholder_phy } phy ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*,int) ; 
 int FUNC4 (struct drm_i915_private*,int) ; 

__attribute__((used)) static inline
u32 FUNC5(struct drm_i915_private *dev_priv,
			      enum phy phy)
{
	if (FUNC2(dev_priv, phy)) {
		return FUNC0(phy);
	} else if (FUNC3(dev_priv, phy)) {
		enum tc_port tc_port = FUNC4(dev_priv,
							(enum port)phy);

		return FUNC1(tc_port);
	}

	return 0;
}