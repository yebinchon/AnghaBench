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
struct plane {scalar_t__ dma_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct drm_framebuffer {TYPE_1__ base; struct drm_gem_object** obj; } ;
struct omap_framebuffer {struct plane* planes; int /*<<< orphan*/  lock; struct drm_format_info const* format; struct drm_framebuffer base; } ;
struct drm_mode_fb_cmd2 {unsigned int* pitches; unsigned int height; scalar_t__ pixel_format; unsigned int* offsets; int /*<<< orphan*/  width; } ;
struct drm_gem_object {unsigned int size; } ;
struct drm_format_info {int num_planes; unsigned int* cpp; int vsub; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct drm_device*,...) ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct drm_framebuffer* FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (struct drm_device*,struct drm_framebuffer*,int /*<<< orphan*/ *) ; 
 struct drm_format_info* FUNC6 (struct drm_device*,struct drm_mode_fb_cmd2 const*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,struct drm_framebuffer*,struct drm_mode_fb_cmd2 const*) ; 
 scalar_t__* formats ; 
 int /*<<< orphan*/  FUNC8 (struct omap_framebuffer*) ; 
 struct omap_framebuffer* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  omap_framebuffer_funcs ; 
 int FUNC11 (struct drm_gem_object*) ; 

struct drm_framebuffer *FUNC12(struct drm_device *dev,
		const struct drm_mode_fb_cmd2 *mode_cmd, struct drm_gem_object **bos)
{
	const struct drm_format_info *format = NULL;
	struct omap_framebuffer *omap_fb = NULL;
	struct drm_framebuffer *fb = NULL;
	unsigned int pitch = mode_cmd->pitches[0];
	int ret, i;

	FUNC1("create framebuffer: dev=%p, mode_cmd=%p (%dx%d@%4.4s)",
			dev, mode_cmd, mode_cmd->width, mode_cmd->height,
			(char *)&mode_cmd->pixel_format);

	format = FUNC6(dev, mode_cmd);

	for (i = 0; i < FUNC0(formats); i++) {
		if (formats[i] == mode_cmd->pixel_format)
			break;
	}

	if (!format || i == FUNC0(formats)) {
		FUNC3(dev->dev, "unsupported pixel format: %4.4s\n",
			(char *)&mode_cmd->pixel_format);
		ret = -EINVAL;
		goto fail;
	}

	omap_fb = FUNC9(sizeof(*omap_fb), GFP_KERNEL);
	if (!omap_fb) {
		ret = -ENOMEM;
		goto fail;
	}

	fb = &omap_fb->base;
	omap_fb->format = format;
	FUNC10(&omap_fb->lock);

	/*
	 * The code below assumes that no format use more than two planes, and
	 * that the two planes of multiplane formats need the same number of
	 * bytes per pixel.
	 */
	if (format->num_planes == 2 && pitch != mode_cmd->pitches[1]) {
		FUNC3(dev->dev, "pitches differ between planes 0 and 1\n");
		ret = -EINVAL;
		goto fail;
	}

	if (pitch % format->cpp[0]) {
		FUNC3(dev->dev,
			"buffer pitch (%u bytes) is not a multiple of pixel size (%u bytes)\n",
			pitch, format->cpp[0]);
		ret = -EINVAL;
		goto fail;
	}

	for (i = 0; i < format->num_planes; i++) {
		struct plane *plane = &omap_fb->planes[i];
		unsigned int vsub = i == 0 ? 1 : format->vsub;
		unsigned int size;

		size = pitch * mode_cmd->height / vsub;

		if (size > FUNC11(bos[i]) - mode_cmd->offsets[i]) {
			FUNC3(dev->dev,
				"provided buffer object is too small! %zu < %d\n",
				bos[i]->size - mode_cmd->offsets[i], size);
			ret = -EINVAL;
			goto fail;
		}

		fb->obj[i]    = bos[i];
		plane->dma_addr  = 0;
	}

	FUNC7(dev, fb, mode_cmd);

	ret = FUNC5(dev, fb, &omap_framebuffer_funcs);
	if (ret) {
		FUNC4(dev->dev, "framebuffer init failed: %d\n", ret);
		goto fail;
	}

	FUNC1("create: FB ID: %d (%p)", fb->base.id, fb);

	return fb;

fail:
	FUNC8(omap_fb);

	return FUNC2(ret);
}