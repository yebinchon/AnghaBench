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
struct drm_i915_private {int dummy; } ;
struct cnl_procmon {int /*<<< orphan*/  dw10; int /*<<< orphan*/  dw9; int /*<<< orphan*/  dw1; } ;
typedef  enum phy { ____Placeholder_phy } phy ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct drm_i915_private*,int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 struct cnl_procmon* FUNC4 (struct drm_i915_private*,int) ; 

__attribute__((used)) static bool FUNC5(struct drm_i915_private *dev_priv,
					  enum phy phy)
{
	const struct cnl_procmon *procmon;
	bool ret;

	procmon = FUNC4(dev_priv, phy);

	ret = FUNC3(dev_priv, phy, FUNC0(phy),
			    (0xff << 16) | 0xff, procmon->dw1);
	ret &= FUNC3(dev_priv, phy, FUNC2(phy),
			     -1U, procmon->dw9);
	ret &= FUNC3(dev_priv, phy, FUNC1(phy),
			     -1U, procmon->dw10);

	return ret;
}