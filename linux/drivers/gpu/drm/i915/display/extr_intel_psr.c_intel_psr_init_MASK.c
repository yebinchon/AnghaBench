#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {int sink_not_reliable; int link_standby; int /*<<< orphan*/  lock; int /*<<< orphan*/  work; int /*<<< orphan*/  sink_support; } ;
struct TYPE_5__ {int full_link; int /*<<< orphan*/  enable; } ;
struct TYPE_6__ {TYPE_1__ psr; } ;
struct drm_i915_private {TYPE_3__ psr; TYPE_2__ vbt; int /*<<< orphan*/  psr_mmio_base; } ;
struct TYPE_8__ {int enable_psr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDW_EDP_PSR_BASE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EDP_PSR_IIR ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  HSW_EDP_PSR_BASE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  TRANSCODER_EDP ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_4__ i915_modparams ; 
 int /*<<< orphan*/  intel_psr_work ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct drm_i915_private *dev_priv)
{
	u32 val;

	if (!FUNC2(dev_priv))
		return;

	dev_priv->psr_mmio_base = FUNC7(dev_priv) ?
		HSW_EDP_PSR_BASE : BDW_EDP_PSR_BASE;

	if (!dev_priv->psr.sink_support)
		return;

	if (i915_modparams.enable_psr == -1)
		if (FUNC5(dev_priv) < 9 || !dev_priv->vbt.psr.enable)
			i915_modparams.enable_psr = 0;

	/*
	 * If a PSR error happened and the driver is reloaded, the EDP_PSR_IIR
	 * will still keep the error set even after the reset done in the
	 * irq_preinstall and irq_uninstall hooks.
	 * And enabling in this situation cause the screen to freeze in the
	 * first time that PSR HW tries to activate so lets keep PSR disabled
	 * to avoid any rendering problems.
	 */
	val = FUNC3(EDP_PSR_IIR);
	val &= FUNC1(FUNC8(TRANSCODER_EDP));
	if (val) {
		FUNC0("PSR interruption error set\n");
		dev_priv->psr.sink_not_reliable = true;
	}

	/* Set link_standby x link_off defaults */
	if (FUNC7(dev_priv) || FUNC6(dev_priv))
		/* HSW and BDW require workarounds that we don't implement. */
		dev_priv->psr.link_standby = false;
	else
		/* For new platforms let's respect VBT back again */
		dev_priv->psr.link_standby = dev_priv->vbt.psr.full_link;

	FUNC4(&dev_priv->psr.work, intel_psr_work);
	FUNC9(&dev_priv->psr.lock);
}