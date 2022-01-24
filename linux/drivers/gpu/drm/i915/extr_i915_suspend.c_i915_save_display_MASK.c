#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void* saveFBC_CONTROL; void* saveDSPARB; } ;
struct drm_i915_private {TYPE_1__ regfile; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSPARB ; 
 int /*<<< orphan*/  FBC_CONTROL ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv)
{
	/* Display arbitration control */
	if (FUNC2(dev_priv) <= 4)
		dev_priv->regfile.saveDSPARB = FUNC1(DSPARB);

	/* save FBC interval */
	if (FUNC0(dev_priv) && FUNC2(dev_priv) <= 4 && !FUNC3(dev_priv))
		dev_priv->regfile.saveFBC_CONTROL = FUNC1(FBC_CONTROL);
}