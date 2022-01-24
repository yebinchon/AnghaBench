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
struct TYPE_2__ {scalar_t__ notifier_call; } ;
struct tilcdc_drm_private {scalar_t__ wq; scalar_t__ mmio; scalar_t__ clk; scalar_t__ is_registered; scalar_t__ crtc; TYPE_1__ freq_transition; } ;
struct drm_device {int /*<<< orphan*/  dev; struct tilcdc_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_TRANSITION_NOTIFIER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

__attribute__((used)) static void FUNC12(struct drm_device *dev)
{
	struct tilcdc_drm_private *priv = dev->dev_private;

#ifdef CONFIG_CPU_FREQ
	if (priv->freq_transition.notifier_call)
		cpufreq_unregister_notifier(&priv->freq_transition,
					    CPUFREQ_TRANSITION_NOTIFIER);
#endif

	if (priv->crtc)
		FUNC11(priv->crtc);

	if (priv->is_registered)
		FUNC4(dev);

	FUNC6(dev);
	FUNC5(dev);
	FUNC7(dev);

	if (priv->clk)
		FUNC0(priv->clk);

	if (priv->mmio)
		FUNC9(priv->mmio);

	if (priv->wq) {
		FUNC8(priv->wq);
		FUNC2(priv->wq);
	}

	dev->dev_private = NULL;

	FUNC10(dev->dev);

	FUNC3(dev);
}