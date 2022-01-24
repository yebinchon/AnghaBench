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
struct TYPE_2__ {int /*<<< orphan*/  cur_latency; int /*<<< orphan*/  spr_latency; int /*<<< orphan*/  pri_latency; } ;
struct drm_i915_private {TYPE_1__ wm; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC8(struct drm_i915_private *dev_priv)
{
	FUNC4(dev_priv, dev_priv->wm.pri_latency);

	FUNC5(dev_priv->wm.spr_latency, dev_priv->wm.pri_latency,
	       sizeof(dev_priv->wm.pri_latency));
	FUNC5(dev_priv->wm.cur_latency, dev_priv->wm.pri_latency,
	       sizeof(dev_priv->wm.pri_latency));

	FUNC2(dev_priv, dev_priv->wm.spr_latency);
	FUNC1(dev_priv, dev_priv->wm.cur_latency);

	FUNC3(dev_priv, "Primary", dev_priv->wm.pri_latency);
	FUNC3(dev_priv, "Sprite", dev_priv->wm.spr_latency);
	FUNC3(dev_priv, "Cursor", dev_priv->wm.cur_latency);

	if (FUNC0(dev_priv, 6)) {
		FUNC6(dev_priv);
		FUNC7(dev_priv);
	}
}