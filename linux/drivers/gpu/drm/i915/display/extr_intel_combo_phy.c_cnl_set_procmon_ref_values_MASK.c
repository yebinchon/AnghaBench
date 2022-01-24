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
typedef  int u32 ;
struct drm_i915_private {int dummy; } ;
struct cnl_procmon {int dw1; int dw9; int dw10; } ;
typedef  enum phy { ____Placeholder_phy } phy ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct cnl_procmon* FUNC5 (struct drm_i915_private*,int) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv,
				       enum phy phy)
{
	const struct cnl_procmon *procmon;
	u32 val;

	procmon = FUNC5(dev_priv, phy);

	val = FUNC0(FUNC2(phy));
	val &= ~((0xff << 16) | 0xff);
	val |= procmon->dw1;
	FUNC1(FUNC2(phy), val);

	FUNC1(FUNC4(phy), procmon->dw9);
	FUNC1(FUNC3(phy), procmon->dw10);
}