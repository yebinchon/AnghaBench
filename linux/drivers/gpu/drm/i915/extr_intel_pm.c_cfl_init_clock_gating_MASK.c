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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ILK_DPFC_CHICKEN ; 
 int ILK_DPFC_NUKE_ON_ANY_MODIFICATION ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv)
{
	FUNC2(dev_priv);
	FUNC3(dev_priv);

	/* WaFbcNukeOnHostModify:cfl */
	FUNC1(ILK_DPFC_CHICKEN, FUNC0(ILK_DPFC_CHICKEN) |
		   ILK_DPFC_NUKE_ON_ANY_MODIFICATION);
}