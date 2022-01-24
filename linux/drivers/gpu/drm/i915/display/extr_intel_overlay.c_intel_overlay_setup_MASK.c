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
struct overlay_registers {int dummy; } ;
struct intel_overlay {int color_key; int color_key_enabled; int brightness; int contrast; int saturation; int /*<<< orphan*/  regs; int /*<<< orphan*/  last_flip; int /*<<< orphan*/  context; struct drm_i915_private* i915; } ;
struct drm_i915_private {struct intel_overlay* overlay; TYPE_1__** engine; } ;
struct TYPE_2__ {int /*<<< orphan*/  kernel_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 size_t RCS0 ; 
 int FUNC5 (struct intel_overlay*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  intel_overlay_last_flip_retire ; 
 int /*<<< orphan*/  FUNC7 (struct intel_overlay*) ; 
 struct intel_overlay* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_overlay*,int /*<<< orphan*/ ) ; 

void FUNC12(struct drm_i915_private *dev_priv)
{
	struct intel_overlay *overlay;
	int ret;

	if (!FUNC3(dev_priv))
		return;

	if (!FUNC2(dev_priv, RCS0))
		return;

	overlay = FUNC8(sizeof(*overlay), GFP_KERNEL);
	if (!overlay)
		return;

	overlay->i915 = dev_priv;
	overlay->context = dev_priv->engine[RCS0]->kernel_context;
	FUNC1(!overlay->context);

	overlay->color_key = 0x0101fe;
	overlay->color_key_enabled = true;
	overlay->brightness = -19;
	overlay->contrast = 75;
	overlay->saturation = 146;

	FUNC6(dev_priv,
			 &overlay->last_flip,
			 NULL, intel_overlay_last_flip_retire);

	ret = FUNC5(overlay, FUNC4(dev_priv));
	if (ret)
		goto out_free;

	FUNC9(overlay->regs, 0, sizeof(struct overlay_registers));
	FUNC10(overlay->regs);
	FUNC11(overlay, overlay->regs);

	dev_priv->overlay = overlay;
	FUNC0("Initialized overlay support.\n");
	return;

out_free:
	FUNC7(overlay);
}