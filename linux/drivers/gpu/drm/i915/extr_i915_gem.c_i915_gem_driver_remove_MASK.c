#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_4__ {int /*<<< orphan*/  uc; int /*<<< orphan*/  awake; } ;
struct TYPE_5__ {int /*<<< orphan*/  userfault_wakeref; } ;
struct drm_i915_private {TYPE_3__ drm; TYPE_1__ gt; TYPE_2__ ggtt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct drm_i915_private *dev_priv)
{
	FUNC0(dev_priv->gt.awake);

	FUNC7(&dev_priv->ggtt.userfault_wakeref);

	FUNC3(dev_priv);
	FUNC4(dev_priv);

	/* Flush any outstanding unpin_work. */
	FUNC2(dev_priv);

	FUNC8(&dev_priv->drm.struct_mutex);
	FUNC6(&dev_priv->gt.uc);
	FUNC5(&dev_priv->gt.uc);
	FUNC9(&dev_priv->drm.struct_mutex);

	FUNC1(dev_priv);
}