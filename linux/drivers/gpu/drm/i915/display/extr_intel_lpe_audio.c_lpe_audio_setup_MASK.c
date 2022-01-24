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
struct TYPE_2__ {int irq; int /*<<< orphan*/ * platdev; } ;
struct drm_i915_private {TYPE_1__ lpe_audio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VLV_AUD_CHICKEN_BIT_REG ; 
 int /*<<< orphan*/  VLV_CHICKEN_BIT_DBG_ENABLE ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/ * FUNC8 (struct drm_i915_private*) ; 

__attribute__((used)) static int FUNC9(struct drm_i915_private *dev_priv)
{
	int ret;

	dev_priv->lpe_audio.irq = FUNC5(0);
	if (dev_priv->lpe_audio.irq < 0) {
		FUNC1("Failed to allocate IRQ desc: %d\n",
			dev_priv->lpe_audio.irq);
		ret = dev_priv->lpe_audio.irq;
		goto err;
	}

	FUNC0("irq = %d\n", dev_priv->lpe_audio.irq);

	ret = FUNC7(dev_priv);

	if (ret) {
		FUNC1("Failed to initialize irqchip for lpe audio: %d\n",
			ret);
		goto err_free_irq;
	}

	dev_priv->lpe_audio.platdev = FUNC8(dev_priv);

	if (FUNC3(dev_priv->lpe_audio.platdev)) {
		ret = FUNC4(dev_priv->lpe_audio.platdev);
		FUNC1("Failed to create lpe audio platform device: %d\n",
			ret);
		goto err_free_irq;
	}

	/* enable chicken bit; at least this is required for Dell Wyse 3040
	 * with DP outputs (but only sometimes by some reason!)
	 */
	FUNC2(VLV_AUD_CHICKEN_BIT_REG, VLV_CHICKEN_BIT_DBG_ENABLE);

	return 0;
err_free_irq:
	FUNC6(dev_priv->lpe_audio.irq);
err:
	dev_priv->lpe_audio.irq = -1;
	dev_priv->lpe_audio.platdev = NULL;
	return ret;
}