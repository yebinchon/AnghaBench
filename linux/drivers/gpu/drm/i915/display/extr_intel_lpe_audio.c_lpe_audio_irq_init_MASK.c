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
struct TYPE_2__ {int irq; } ;
struct drm_i915_private {TYPE_1__ lpe_audio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int,struct drm_i915_private*) ; 
 int /*<<< orphan*/  lpe_audio_irqchip ; 

__attribute__((used)) static int FUNC4(struct drm_i915_private *dev_priv)
{
	int irq = dev_priv->lpe_audio.irq;

	FUNC0(!FUNC1(dev_priv));
	FUNC2(irq,
				&lpe_audio_irqchip,
				handle_simple_irq,
				"hdmi_lpe_audio_irq_handler");

	return FUNC3(irq, dev_priv);
}