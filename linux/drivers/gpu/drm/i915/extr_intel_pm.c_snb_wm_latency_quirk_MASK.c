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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct drm_i915_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct drm_i915_private *dev_priv)
{
	bool changed;

	/*
	 * The BIOS provided WM memory latency values are often
	 * inadequate for high resolution displays. Adjust them.
	 */
	changed = FUNC1(dev_priv, dev_priv->wm.pri_latency, 12) |
		FUNC1(dev_priv, dev_priv->wm.spr_latency, 12) |
		FUNC1(dev_priv, dev_priv->wm.cur_latency, 12);

	if (!changed)
		return;

	FUNC0("WM latency values increased to avoid potential underruns\n");
	FUNC2(dev_priv, "Primary", dev_priv->wm.pri_latency);
	FUNC2(dev_priv, "Sprite", dev_priv->wm.spr_latency);
	FUNC2(dev_priv, "Cursor", dev_priv->wm.cur_latency);
}