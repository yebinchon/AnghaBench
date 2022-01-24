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
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int VGA_DISP_DISABLE ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 

void FUNC4(struct drm_i915_private *dev_priv)
{
	i915_reg_t vga_reg = FUNC3(dev_priv);

	if (!(FUNC1(vga_reg) & VGA_DISP_DISABLE)) {
		FUNC0("Something enabled VGA plane, disabling it\n");
		FUNC2(dev_priv);
	}
}