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
typedef  int u32 ;
struct intel_uncore {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  debug; } ;
struct drm_i915_private {int irq_mask; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  gt; TYPE_1__ psr; struct intel_uncore uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  DE ; 
 int DE_AUX_CHANNEL_A ; 
 int DE_AUX_CHANNEL_A_IVB ; 
 int DE_DP_A_HOTPLUG ; 
 int DE_DP_A_HOTPLUG_IVB ; 
 int DE_EDP_PSR_INT_HSW ; 
 int DE_ERR_INT_IVB ; 
 int DE_GSE ; 
 int DE_GSE_IVB ; 
 int DE_MASTER_IRQ_CONTROL ; 
 int DE_PCH_EVENT ; 
 int DE_PCH_EVENT_IVB ; 
 int DE_PCU_EVENT ; 
 int DE_PIPEA_CRC_DONE ; 
 int DE_PIPEA_FIFO_UNDERRUN ; 
 int DE_PIPEA_VBLANK ; 
 int DE_PIPEA_VBLANK_IVB ; 
 int DE_PIPEB_CRC_DONE ; 
 int DE_PIPEB_FIFO_UNDERRUN ; 
 int DE_PIPEB_VBLANK ; 
 int DE_PIPEB_VBLANK_IVB ; 
 int DE_PIPEC_VBLANK_IVB ; 
 int DE_POISON ; 
 int /*<<< orphan*/  EDP_PSR_IIR ; 
 int /*<<< orphan*/  FUNC0 (struct intel_uncore*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct drm_i915_private *dev_priv)
{
	struct intel_uncore *uncore = &dev_priv->uncore;
	u32 display_mask, extra_mask;

	if (FUNC1(dev_priv) >= 7) {
		display_mask = (DE_MASTER_IRQ_CONTROL | DE_GSE_IVB |
				DE_PCH_EVENT_IVB | DE_AUX_CHANNEL_A_IVB);
		extra_mask = (DE_PIPEC_VBLANK_IVB | DE_PIPEB_VBLANK_IVB |
			      DE_PIPEA_VBLANK_IVB | DE_ERR_INT_IVB |
			      DE_DP_A_HOTPLUG_IVB);
	} else {
		display_mask = (DE_MASTER_IRQ_CONTROL | DE_GSE | DE_PCH_EVENT |
				DE_AUX_CHANNEL_A | DE_PIPEB_CRC_DONE |
				DE_PIPEA_CRC_DONE | DE_POISON);
		extra_mask = (DE_PIPEA_VBLANK | DE_PIPEB_VBLANK | DE_PCU_EVENT |
			      DE_PIPEB_FIFO_UNDERRUN | DE_PIPEA_FIFO_UNDERRUN |
			      DE_DP_A_HOTPLUG);
	}

	if (FUNC2(dev_priv)) {
		FUNC4(uncore, EDP_PSR_IIR);
		FUNC10(dev_priv, dev_priv->psr.debug);
		display_mask |= DE_EDP_PSR_INT_HSW;
	}

	dev_priv->irq_mask = ~display_mask;

	FUNC7(dev_priv);

	FUNC0(uncore, DE, dev_priv->irq_mask,
		      display_mask | extra_mask);

	FUNC5(&dev_priv->gt);

	FUNC9(dev_priv);

	FUNC6(dev_priv);

	if (FUNC3(dev_priv)) {
		/* Enable PCU event interrupts
		 *
		 * spinlocking not required here for correctness since interrupt
		 * setup is guaranteed to run in single-threaded context. But we
		 * need it to make the assert_spin_locked happy. */
		FUNC11(&dev_priv->irq_lock);
		FUNC8(dev_priv, DE_PCU_EVENT);
		FUNC12(&dev_priv->irq_lock);
	}
}