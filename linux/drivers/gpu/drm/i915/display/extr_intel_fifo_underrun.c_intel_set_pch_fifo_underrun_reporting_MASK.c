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
struct intel_crtc {int pch_fifo_underrun_disabled; } ;
struct drm_i915_private {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  drm; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 struct intel_crtc* FUNC3 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

bool FUNC6(struct drm_i915_private *dev_priv,
					   enum pipe pch_transcoder,
					   bool enable)
{
	struct intel_crtc *crtc =
		FUNC3(dev_priv, pch_transcoder);
	unsigned long flags;
	bool old;

	/*
	 * NOTE: Pre-LPT has a fixed cpu pipe -> pch transcoder mapping, but LPT
	 * has only one pch transcoder A that all pipes can use. To avoid racy
	 * pch transcoder -> pipe lookups from interrupt code simply store the
	 * underrun statistics in crtc A. Since we never expose this anywhere
	 * nor use it outside of the fifo underrun code here using the "wrong"
	 * crtc on LPT won't cause issues.
	 */

	FUNC4(&dev_priv->irq_lock, flags);

	old = !crtc->pch_fifo_underrun_disabled;
	crtc->pch_fifo_underrun_disabled = !enable;

	if (FUNC0(dev_priv))
		FUNC2(&dev_priv->drm,
						pch_transcoder,
						enable);
	else
		FUNC1(&dev_priv->drm,
						pch_transcoder,
						enable, old);

	FUNC5(&dev_priv->irq_lock, flags);
	return old;
}