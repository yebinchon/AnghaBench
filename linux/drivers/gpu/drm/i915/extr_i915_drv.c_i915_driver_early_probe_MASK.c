#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  wm_mutex; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct drm_i915_private {int /*<<< orphan*/  gt; int /*<<< orphan*/  wopcm; int /*<<< orphan*/  runtime_pm; int /*<<< orphan*/  hdcp_comp_mutex; int /*<<< orphan*/  pps_mutex; TYPE_2__ wm; int /*<<< orphan*/  av_mutex; int /*<<< orphan*/  sb_qos; int /*<<< orphan*/  sb_lock; int /*<<< orphan*/  backlight_lock; TYPE_1__ gpu_error; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  uncore; int /*<<< orphan*/  mmio_debug; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  PM_QOS_CPU_DMA_LATENCY ; 
 int /*<<< orphan*/  PM_QOS_DEFAULT_VALUE ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC16 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC17 (struct drm_i915_private*) ; 
 int FUNC18 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int FUNC26 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC27 (struct drm_i915_private*) ; 

__attribute__((used)) static int FUNC28(struct drm_i915_private *dev_priv)
{
	int ret = 0;

	if (FUNC2(dev_priv))
		return -ENODEV;

	FUNC8(dev_priv);

	FUNC21(&dev_priv->mmio_debug);
	FUNC20(&dev_priv->uncore, dev_priv);

	FUNC25(&dev_priv->irq_lock);
	FUNC25(&dev_priv->gpu_error.lock);
	FUNC23(&dev_priv->backlight_lock);

	FUNC23(&dev_priv->sb_lock);
	FUNC24(&dev_priv->sb_qos,
			   PM_QOS_CPU_DMA_LATENCY, PM_QOS_DEFAULT_VALUE);

	FUNC23(&dev_priv->av_mutex);
	FUNC23(&dev_priv->wm.wm_mutex);
	FUNC23(&dev_priv->pps_mutex);
	FUNC23(&dev_priv->hdcp_comp_mutex);

	FUNC3(dev_priv);
	FUNC19(&dev_priv->runtime_pm);

	ret = FUNC5(dev_priv);
	if (ret < 0)
		return ret;

	ret = FUNC26(dev_priv);
	if (ret < 0)
		goto err_workqueues;

	FUNC22(&dev_priv->wopcm);

	FUNC11(&dev_priv->gt, dev_priv);

	ret = FUNC1(dev_priv);
	if (ret < 0)
		goto err_gt;

	/* This must be called before any calls to HAS_PCH_* */
	FUNC6(dev_priv);

	FUNC17(dev_priv);
	FUNC15(dev_priv);
	ret = FUNC18(dev_priv);
	if (ret < 0)
		goto err_gem;
	FUNC16(dev_priv);
	FUNC14(dev_priv);
	FUNC13(dev_priv);
	FUNC12(dev_priv);
	FUNC9(dev_priv);

	FUNC7(dev_priv);

	return 0;

err_gem:
	FUNC0(dev_priv);
err_gt:
	FUNC10(&dev_priv->gt);
	FUNC27(dev_priv);
err_workqueues:
	FUNC4(dev_priv);
	return ret;
}