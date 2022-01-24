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
struct TYPE_5__ {int /*<<< orphan*/  list; } ;
struct TYPE_4__ {int /*<<< orphan*/  uc; } ;
struct TYPE_6__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {TYPE_2__ contexts; TYPE_1__ gt; int /*<<< orphan*/  gt_wa_list; TYPE_3__ drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void FUNC13(struct drm_i915_private *dev_priv)
{
	FUNC11(&dev_priv->drm.struct_mutex);
	FUNC6(dev_priv);
	FUNC2(dev_priv);
	FUNC4(dev_priv);
	FUNC12(&dev_priv->drm.struct_mutex);

	FUNC9(&dev_priv->gt_wa_list);

	FUNC5(dev_priv);

	FUNC8(&dev_priv->gt.uc);
	FUNC1(dev_priv);
	FUNC7(dev_priv);

	FUNC3(dev_priv);

	FUNC0(!FUNC10(&dev_priv->contexts.list));
}