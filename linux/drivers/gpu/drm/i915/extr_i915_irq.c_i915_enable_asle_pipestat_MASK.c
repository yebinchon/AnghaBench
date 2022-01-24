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
struct drm_i915_private {int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  PIPE_A ; 
 int /*<<< orphan*/  PIPE_B ; 
 int /*<<< orphan*/  PIPE_LEGACY_BLC_EVENT_STATUS ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv)
{
	if (!FUNC2(dev_priv))
		return;

	FUNC3(&dev_priv->irq_lock);

	FUNC1(dev_priv, PIPE_B, PIPE_LEGACY_BLC_EVENT_STATUS);
	if (FUNC0(dev_priv) >= 4)
		FUNC1(dev_priv, PIPE_A,
				     PIPE_LEGACY_BLC_EVENT_STATUS);

	FUNC4(&dev_priv->irq_lock);
}