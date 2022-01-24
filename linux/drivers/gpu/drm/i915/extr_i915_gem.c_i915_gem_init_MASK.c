#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_8__ {int /*<<< orphan*/  uc; } ;
struct drm_i915_private {TYPE_1__ drm; TYPE_3__ gt; int /*<<< orphan*/  uncore; int /*<<< orphan*/  wopcm; } ;
struct TYPE_7__ {int /*<<< orphan*/  page_sizes; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  FORCEWAKE_ALL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  I915_GTT_PAGE_SIZE_4K ; 
 scalar_t__ FUNC1 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SZ_256K ; 
 int FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int FUNC9 (struct drm_i915_private*) ; 
 int FUNC10 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_i915_private*) ; 
 int FUNC16 (struct drm_i915_private*) ; 
 int FUNC17 (struct drm_i915_private*) ; 
 int FUNC18 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct drm_i915_private*,char*) ; 
 int /*<<< orphan*/  FUNC20 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC21 (struct drm_i915_private*) ; 
 int FUNC22 (struct drm_i915_private*) ; 
 int FUNC23 (struct drm_i915_private*) ; 
 int FUNC24 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*) ; 
 int FUNC26 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC28 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC29 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC30 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC31 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC39 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC40 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC42 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ *) ; 

int FUNC45(struct drm_i915_private *dev_priv)
{
	int ret;

	/* We need to fallback to 4K pages if host doesn't support huge gtt. */
	if (FUNC39(dev_priv) && !FUNC40(dev_priv))
		FUNC42(dev_priv)->page_sizes =
			I915_GTT_PAGE_SIZE_4K;

	FUNC31(dev_priv);

	ret = FUNC11(dev_priv);
	if (ret)
		return ret;

	FUNC33(&dev_priv->gt.uc);
	FUNC41(&dev_priv->wopcm);

	/* This is just a security blanket to placate dragons.
	 * On some systems, we very sporadically observe that the first TLBs
	 * used by the CS may be stale, despite us poking the TLB reset. If
	 * we hold the forcewake during initialisation these problems
	 * just magically go away.
	 */
	FUNC43(&dev_priv->drm.struct_mutex);
	FUNC37(&dev_priv->uncore, FORCEWAKE_ALL);

	ret = FUNC17(dev_priv);
	if (ret) {
		FUNC0(ret == -EIO);
		goto err_unlock;
	}

	ret = FUNC10(dev_priv,
				    FUNC1(dev_priv, 2) ? SZ_256K : PAGE_SIZE);
	if (ret) {
		FUNC0(ret == -EIO);
		goto err_ggtt;
	}

	ret = FUNC23(dev_priv);
	if (ret) {
		FUNC0(ret == -EIO);
		goto err_unlock;
	}

	ret = FUNC5(dev_priv);
	if (ret) {
		FUNC0(ret == -EIO);
		goto err_scratch;
	}

	ret = FUNC22(dev_priv);
	if (ret) {
		FUNC0(ret == -EIO);
		goto err_context;
	}

	FUNC29(dev_priv);

	FUNC36(&dev_priv->gt.uc);

	ret = FUNC9(dev_priv);
	if (ret)
		goto err_uc_init;

	/* Only when the HW is re-initialised, can we replay the requests */
	ret = FUNC26(&dev_priv->gt);
	if (ret)
		goto err_init_hw;

	/*
	 * Despite its name intel_init_clock_gating applies both display
	 * clock gating workarounds; GT mmio workarounds and the occasional
	 * GT power context workaround. Worse, sometimes it includes a context
	 * register workaround which we need to apply before we record the
	 * default HW state for all contexts.
	 *
	 * FIXME: break up the workarounds and apply them at the right time!
	 */
	FUNC28(dev_priv);

	ret = FUNC24(dev_priv);
	if (ret)
		goto err_gt;

	ret = FUNC2(dev_priv);
	if (ret)
		goto err_gt;

	ret = FUNC18(dev_priv, -ENODEV);
	if (ret)
		goto err_gt;

	ret = FUNC18(dev_priv, -EIO);
	if (ret)
		goto err_gt;

	FUNC38(&dev_priv->uncore, FORCEWAKE_ALL);
	FUNC44(&dev_priv->drm.struct_mutex);

	return 0;

	/*
	 * Unwinding is complicated by that we want to handle -EIO to mean
	 * disable GPU submission but keep KMS alive. We want to mark the
	 * HW as irrevisibly wedged, but keep enough state around that the
	 * driver doesn't explode during runtime.
	 */
err_gt:
	FUNC44(&dev_priv->drm.struct_mutex);

	FUNC27(&dev_priv->gt);
	FUNC14(dev_priv);
	FUNC15(dev_priv);

	FUNC7(dev_priv);

	FUNC43(&dev_priv->drm.struct_mutex);
err_init_hw:
	FUNC35(&dev_priv->gt.uc);
err_uc_init:
	if (ret != -EIO) {
		FUNC34(&dev_priv->gt.uc);
		FUNC20(dev_priv);
		FUNC21(dev_priv);
	}
err_context:
	if (ret != -EIO)
		FUNC4(dev_priv);
err_scratch:
	FUNC8(dev_priv);
err_ggtt:
err_unlock:
	FUNC38(&dev_priv->uncore, FORCEWAKE_ALL);
	FUNC44(&dev_priv->drm.struct_mutex);

	if (ret != -EIO) {
		FUNC32(&dev_priv->gt.uc);
		FUNC3(dev_priv);
		FUNC30(dev_priv);
	}

	if (ret == -EIO) {
		FUNC43(&dev_priv->drm.struct_mutex);

		/*
		 * Allow engines or uC initialisation to fail by marking the GPU
		 * as wedged. But we only want to do this when the GPU is angry,
		 * for all other failure, such as an allocation failure, bail.
		 */
		if (!FUNC25(&dev_priv->gt)) {
			FUNC19(dev_priv,
					 "Failed to initialize GPU, declaring it wedged!\n");
			FUNC27(&dev_priv->gt);
		}

		/* Minimal basic recovery for KMS */
		ret = FUNC16(dev_priv);
		FUNC13(dev_priv);
		FUNC12(dev_priv);
		FUNC28(dev_priv);

		FUNC44(&dev_priv->drm.struct_mutex);
	}

	FUNC6(dev_priv);
	return ret;
}