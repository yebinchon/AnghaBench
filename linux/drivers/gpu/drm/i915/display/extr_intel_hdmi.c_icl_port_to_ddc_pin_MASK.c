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
typedef  int u8 ;
struct drm_i915_private {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;
typedef  enum phy { ____Placeholder_phy } phy ;

/* Variables and functions */
 int GMBUS_PIN_1_BXT ; 
 int GMBUS_PIN_2_BXT ; 
 int GMBUS_PIN_9_TC1_ICP ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*,int) ; 
 int FUNC3 (struct drm_i915_private*,int) ; 
 int FUNC4 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static u8 FUNC6(struct drm_i915_private *dev_priv, enum port port)
{
	enum phy phy = FUNC3(dev_priv, port);

	if (FUNC1(dev_priv, phy))
		return GMBUS_PIN_1_BXT + port;
	else if (FUNC2(dev_priv, phy))
		return GMBUS_PIN_9_TC1_ICP + FUNC4(dev_priv, port);

	FUNC0(1, "Unknown port:%c\n", FUNC5(port));
	return GMBUS_PIN_2_BXT;
}