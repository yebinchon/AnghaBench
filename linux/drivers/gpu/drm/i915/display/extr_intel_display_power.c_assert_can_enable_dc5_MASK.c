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
struct drm_i915_private {int /*<<< orphan*/  runtime_pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_STATE_EN ; 
 int DC_STATE_EN_UPTO_DC5 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SKL_DISP_PW_2 ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv)
{
	bool pg2_enabled = FUNC4(dev_priv,
					SKL_DISP_PW_2);

	FUNC1(pg2_enabled, "PG2 not disabled to enable DC5.\n");

	FUNC1((FUNC0(DC_STATE_EN) & DC_STATE_EN_UPTO_DC5),
		  "DC5 already programmed to be enabled.\n");
	FUNC3(&dev_priv->runtime_pm);

	FUNC2(dev_priv);
}