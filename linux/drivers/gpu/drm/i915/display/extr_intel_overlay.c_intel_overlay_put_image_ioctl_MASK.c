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
typedef  int u32 ;
struct intel_overlay {int pfit_active; int pfit_vscale_ratio; struct intel_crtc* crtc; } ;
struct intel_crtc {TYPE_2__* config; struct intel_overlay* overlay; } ;
struct drm_intel_overlay_put_image {int flags; int dst_y; int dst_height; scalar_t__ src_scan_height; scalar_t__ src_height; scalar_t__ src_scan_width; scalar_t__ src_width; int /*<<< orphan*/  bo_handle; int /*<<< orphan*/  crtc_id; } ;
struct drm_i915_private {struct intel_overlay* overlay; } ;
struct drm_i915_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_3__ {int control; } ;
struct TYPE_4__ {int pipe_src_w; TYPE_1__ gmch_pfit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 int I915_OVERLAY_ENABLE ; 
 int PFIT_ENABLE ; 
 int FUNC2 (struct intel_overlay*,struct drm_intel_overlay_put_image*) ; 
 int FUNC3 (struct intel_overlay*,struct intel_crtc*) ; 
 int FUNC4 (struct drm_intel_overlay_put_image*) ; 
 int FUNC5 (struct drm_i915_private*,struct drm_intel_overlay_put_image*,struct drm_i915_gem_object*) ; 
 struct drm_crtc* FUNC6 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 scalar_t__ FUNC9 (struct drm_i915_gem_object*) ; 
 struct drm_i915_gem_object* FUNC10 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_gem_object*) ; 
 int FUNC12 (struct intel_overlay*,struct drm_i915_gem_object*,struct drm_intel_overlay_put_image*) ; 
 int FUNC13 (struct intel_overlay*) ; 
 int FUNC14 (struct intel_overlay*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC17 (struct drm_device*) ; 
 struct intel_crtc* FUNC18 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC19 (struct intel_overlay*) ; 

int FUNC20(struct drm_device *dev, void *data,
				  struct drm_file *file_priv)
{
	struct drm_intel_overlay_put_image *params = data;
	struct drm_i915_private *dev_priv = FUNC17(dev);
	struct intel_overlay *overlay;
	struct drm_crtc *drmmode_crtc;
	struct intel_crtc *crtc;
	struct drm_i915_gem_object *new_bo;
	int ret;

	overlay = dev_priv->overlay;
	if (!overlay) {
		FUNC0("userspace bug: no overlay\n");
		return -ENODEV;
	}

	if (!(params->flags & I915_OVERLAY_ENABLE)) {
		FUNC7(dev);
		FUNC15(&dev->struct_mutex);

		ret = FUNC14(overlay);

		FUNC16(&dev->struct_mutex);
		FUNC8(dev);

		return ret;
	}

	drmmode_crtc = FUNC6(dev, file_priv, params->crtc_id);
	if (!drmmode_crtc)
		return -ENOENT;
	crtc = FUNC18(drmmode_crtc);

	new_bo = FUNC10(file_priv, params->bo_handle);
	if (!new_bo)
		return -ENOENT;

	FUNC7(dev);
	FUNC15(&dev->struct_mutex);

	if (FUNC9(new_bo)) {
		FUNC1("buffer used for overlay image can not be tiled\n");
		ret = -EINVAL;
		goto out_unlock;
	}

	ret = FUNC13(overlay);
	if (ret != 0)
		goto out_unlock;

	if (overlay->crtc != crtc) {
		ret = FUNC14(overlay);
		if (ret != 0)
			goto out_unlock;

		ret = FUNC3(overlay, crtc);
		if (ret != 0)
			goto out_unlock;

		overlay->crtc = crtc;
		crtc->overlay = overlay;

		/* line too wide, i.e. one-line-mode */
		if (crtc->config->pipe_src_w > 1024 &&
		    crtc->config->gmch_pfit.control & PFIT_ENABLE) {
			overlay->pfit_active = true;
			FUNC19(overlay);
		} else
			overlay->pfit_active = false;
	}

	ret = FUNC2(overlay, params);
	if (ret != 0)
		goto out_unlock;

	if (overlay->pfit_active) {
		params->dst_y = (((u32)params->dst_y << 12) /
				 overlay->pfit_vscale_ratio);
		/* shifting right rounds downwards, so add 1 */
		params->dst_height = (((u32)params->dst_height << 12) /
				 overlay->pfit_vscale_ratio) + 1;
	}

	if (params->src_scan_height > params->src_height ||
	    params->src_scan_width > params->src_width) {
		ret = -EINVAL;
		goto out_unlock;
	}

	ret = FUNC5(dev_priv, params, new_bo);
	if (ret != 0)
		goto out_unlock;

	/* Check scaling after src size to prevent a divide-by-zero. */
	ret = FUNC4(params);
	if (ret != 0)
		goto out_unlock;

	ret = FUNC12(overlay, new_bo, params);
	if (ret != 0)
		goto out_unlock;

	FUNC16(&dev->struct_mutex);
	FUNC8(dev);
	FUNC11(new_bo);

	return 0;

out_unlock:
	FUNC16(&dev->struct_mutex);
	FUNC8(dev);
	FUNC11(new_bo);

	return ret;
}