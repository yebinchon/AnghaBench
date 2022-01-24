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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int,int) ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv)
{
	FUNC1(dev_priv);

	FUNC3(dev_priv, 0x08, 0x0001);
	FUNC3(dev_priv, 0x0F, 0x0005);
	FUNC3(dev_priv, 0x0F, 0x0025);
	FUNC0(150);
	FUNC3(dev_priv, 0x0F, 0x0000);
	FUNC3(dev_priv, 0x08, 0x0000);

	FUNC2(dev_priv);
}