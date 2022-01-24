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
struct drm_framebuffer {int width; int* pitches; TYPE_2__** obj; int /*<<< orphan*/  modifier; TYPE_1__* format; } ;
struct intel_framebuffer {int /*<<< orphan*/  frontbuffer; struct drm_framebuffer base; } ;
struct drm_mode_fb_cmd2 {int flags; int* pitches; scalar_t__* offsets; scalar_t__* handles; int /*<<< orphan*/ * modifier; int /*<<< orphan*/  pixel_format; } ;
struct drm_i915_private {int /*<<< orphan*/  drm; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct drm_i915_gem_object {TYPE_2__ base; } ;
struct drm_format_name_buf {int dummy; } ;
struct TYPE_3__ {int num_planes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  DRM_FORMAT_MOD_LINEAR ; 
 int DRM_MODE_FB_MODIFIERS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  I915_FORMAT_MOD_X_TILED ; 
 unsigned int I915_TILING_NONE ; 
 unsigned int I915_TILING_X ; 
 unsigned int I915_TILING_Y ; 
 int FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct drm_framebuffer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct drm_format_name_buf*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct drm_framebuffer*,struct drm_mode_fb_cmd2*) ; 
 unsigned int FUNC8 (struct drm_i915_gem_object*) ; 
 unsigned int FUNC9 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  intel_fb_funcs ; 
 int FUNC12 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct drm_framebuffer*,int) ; 
 int FUNC15 (struct drm_i915_private*,struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC16 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct intel_framebuffer *intel_fb,
				  struct drm_i915_gem_object *obj,
				  struct drm_mode_fb_cmd2 *mode_cmd)
{
	struct drm_i915_private *dev_priv = FUNC19(obj->base.dev);
	struct drm_framebuffer *fb = &intel_fb->base;
	u32 max_stride;
	unsigned int tiling, stride;
	int ret = -EINVAL;
	int i;

	intel_fb->frontbuffer = FUNC16(obj);
	if (!intel_fb->frontbuffer)
		return -ENOMEM;

	FUNC10(obj);
	tiling = FUNC9(obj);
	stride = FUNC8(obj);
	FUNC11(obj);

	if (mode_cmd->flags & DRM_MODE_FB_MODIFIERS) {
		/*
		 * If there's a fence, enforce that
		 * the fb modifier and tiling mode match.
		 */
		if (tiling != I915_TILING_NONE &&
		    tiling != FUNC13(mode_cmd->modifier[0])) {
			FUNC0("tiling_mode doesn't match fb modifier\n");
			goto err;
		}
	} else {
		if (tiling == I915_TILING_X) {
			mode_cmd->modifier[0] = I915_FORMAT_MOD_X_TILED;
		} else if (tiling == I915_TILING_Y) {
			FUNC0("No Y tiling for legacy addfb\n");
			goto err;
		}
	}

	if (!FUNC4(&dev_priv->drm,
				      mode_cmd->pixel_format,
				      mode_cmd->modifier[0])) {
		struct drm_format_name_buf format_name;

		FUNC0("unsupported pixel format %s / modifier 0x%llx\n",
			      FUNC6(mode_cmd->pixel_format,
						  &format_name),
			      mode_cmd->modifier[0]);
		goto err;
	}

	/*
	 * gen2/3 display engine uses the fence if present,
	 * so the tiling mode must match the fb modifier exactly.
	 */
	if (FUNC2(dev_priv) < 4 &&
	    tiling != FUNC13(mode_cmd->modifier[0])) {
		FUNC0("tiling_mode must match fb modifier exactly on gen2/3\n");
		goto err;
	}

	max_stride = FUNC12(dev_priv, mode_cmd->pixel_format,
					 mode_cmd->modifier[0]);
	if (mode_cmd->pitches[0] > max_stride) {
		FUNC0("%s pitch (%u) must be at most %d\n",
			      mode_cmd->modifier[0] != DRM_FORMAT_MOD_LINEAR ?
			      "tiled" : "linear",
			      mode_cmd->pitches[0], max_stride);
		goto err;
	}

	/*
	 * If there's a fence, enforce that
	 * the fb pitch and fence stride match.
	 */
	if (tiling != I915_TILING_NONE && mode_cmd->pitches[0] != stride) {
		FUNC0("pitch (%d) must match tiling stride (%d)\n",
			      mode_cmd->pitches[0], stride);
		goto err;
	}

	/* FIXME need to adjust LINOFF/TILEOFF accordingly. */
	if (mode_cmd->offsets[0] != 0)
		goto err;

	FUNC7(&dev_priv->drm, fb, mode_cmd);

	for (i = 0; i < fb->format->num_planes; i++) {
		u32 stride_alignment;

		if (mode_cmd->handles[i] != mode_cmd->handles[0]) {
			FUNC0("bad plane %d handle\n", i);
			goto err;
		}

		stride_alignment = FUNC14(fb, i);

		/*
		 * Display WA #0531: skl,bxt,kbl,glk
		 *
		 * Render decompression and plane width > 3840
		 * combined with horizontal panning requires the
		 * plane stride to be a multiple of 4. We'll just
		 * require the entire fb to accommodate that to avoid
		 * potential runtime errors at plane configuration time.
		 */
		if (FUNC3(dev_priv, 9) && i == 0 && fb->width > 3840 &&
		    FUNC18(fb->modifier))
			stride_alignment *= 4;

		if (fb->pitches[i] & (stride_alignment - 1)) {
			FUNC0("plane %d pitch (%d) must be at least %u byte aligned\n",
				      i, fb->pitches[i], stride_alignment);
			goto err;
		}

		fb->obj[i] = &obj->base;
	}

	ret = FUNC15(dev_priv, fb);
	if (ret)
		goto err;

	ret = FUNC5(&dev_priv->drm, fb, &intel_fb_funcs);
	if (ret) {
		FUNC1("framebuffer init failed %d\n", ret);
		goto err;
	}

	return 0;

err:
	FUNC17(intel_fb->frontbuffer);
	return ret;
}