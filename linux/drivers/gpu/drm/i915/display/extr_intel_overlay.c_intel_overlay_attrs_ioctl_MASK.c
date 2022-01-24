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
struct intel_overlay {int brightness; int contrast; int saturation; int color_key_enabled; scalar_t__ active; int /*<<< orphan*/  regs; int /*<<< orphan*/  color_key; } ;
struct drm_intel_overlay_attrs {int flags; int brightness; int contrast; int saturation; void* gamma5; void* gamma4; void* gamma3; void* gamma2; void* gamma1; void* gamma0; int /*<<< orphan*/  color_key; } ;
struct drm_i915_private {struct intel_overlay* overlay; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int I915_OVERLAY_DISABLE_DEST_COLORKEY ; 
 int I915_OVERLAY_UPDATE_ATTRS ; 
 int I915_OVERLAY_UPDATE_GAMMA ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  OGAMC0 ; 
 int /*<<< orphan*/  OGAMC1 ; 
 int /*<<< orphan*/  OGAMC2 ; 
 int /*<<< orphan*/  OGAMC3 ; 
 int /*<<< orphan*/  OGAMC4 ; 
 int /*<<< orphan*/  OGAMC5 ; 
 int FUNC4 (struct drm_intel_overlay_attrs*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_overlay*,int /*<<< orphan*/ ) ; 

int FUNC11(struct drm_device *dev, void *data,
			      struct drm_file *file_priv)
{
	struct drm_intel_overlay_attrs *attrs = data;
	struct drm_i915_private *dev_priv = FUNC9(dev);
	struct intel_overlay *overlay;
	int ret;

	overlay = dev_priv->overlay;
	if (!overlay) {
		FUNC0("userspace bug: no overlay\n");
		return -ENODEV;
	}

	FUNC5(dev);
	FUNC7(&dev->struct_mutex);

	ret = -EINVAL;
	if (!(attrs->flags & I915_OVERLAY_UPDATE_ATTRS)) {
		attrs->color_key  = overlay->color_key;
		attrs->brightness = overlay->brightness;
		attrs->contrast   = overlay->contrast;
		attrs->saturation = overlay->saturation;

		if (!FUNC3(dev_priv, 2)) {
			attrs->gamma0 = FUNC1(OGAMC0);
			attrs->gamma1 = FUNC1(OGAMC1);
			attrs->gamma2 = FUNC1(OGAMC2);
			attrs->gamma3 = FUNC1(OGAMC3);
			attrs->gamma4 = FUNC1(OGAMC4);
			attrs->gamma5 = FUNC1(OGAMC5);
		}
	} else {
		if (attrs->brightness < -128 || attrs->brightness > 127)
			goto out_unlock;
		if (attrs->contrast > 255)
			goto out_unlock;
		if (attrs->saturation > 1023)
			goto out_unlock;

		overlay->color_key  = attrs->color_key;
		overlay->brightness = attrs->brightness;
		overlay->contrast   = attrs->contrast;
		overlay->saturation = attrs->saturation;

		FUNC10(overlay, overlay->regs);

		if (attrs->flags & I915_OVERLAY_UPDATE_GAMMA) {
			if (FUNC3(dev_priv, 2))
				goto out_unlock;

			if (overlay->active) {
				ret = -EBUSY;
				goto out_unlock;
			}

			ret = FUNC4(attrs);
			if (ret)
				goto out_unlock;

			FUNC2(OGAMC0, attrs->gamma0);
			FUNC2(OGAMC1, attrs->gamma1);
			FUNC2(OGAMC2, attrs->gamma2);
			FUNC2(OGAMC3, attrs->gamma3);
			FUNC2(OGAMC4, attrs->gamma4);
			FUNC2(OGAMC5, attrs->gamma5);
		}
	}
	overlay->color_key_enabled = (attrs->flags & I915_OVERLAY_DISABLE_DEST_COLORKEY) == 0;

	ret = 0;
out_unlock:
	FUNC8(&dev->struct_mutex);
	FUNC6(dev);

	return ret;
}