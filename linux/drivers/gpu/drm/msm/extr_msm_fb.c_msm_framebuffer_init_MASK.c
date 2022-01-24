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
struct msm_kms {TYPE_1__* funcs; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct drm_framebuffer {TYPE_2__ base; struct drm_gem_object** obj; } ;
struct msm_framebuffer {struct drm_framebuffer base; struct msm_format const* format; } ;
struct msm_format {int dummy; } ;
struct msm_drm_private {struct msm_kms* kms; } ;
struct drm_mode_fb_cmd2 {int width; int height; unsigned int* pitches; unsigned int* offsets; int /*<<< orphan*/  pixel_format; int /*<<< orphan*/ * modifier; } ;
struct drm_gem_object {unsigned int size; } ;
struct drm_format_info {int num_planes; int hsub; int vsub; unsigned int* cpp; } ;
struct drm_device {int /*<<< orphan*/  dev; struct msm_drm_private* dev_private; } ;
struct TYPE_3__ {struct msm_format* (* get_format ) (struct msm_kms*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (struct drm_gem_object**) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct drm_device*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct drm_framebuffer* FUNC3 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC4 (struct drm_device*,struct drm_framebuffer*,int /*<<< orphan*/ *) ; 
 struct drm_format_info* FUNC5 (struct drm_device*,struct drm_mode_fb_cmd2 const*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,struct drm_framebuffer*,struct drm_mode_fb_cmd2 const*) ; 
 int /*<<< orphan*/  FUNC7 (struct msm_framebuffer*) ; 
 struct msm_framebuffer* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msm_framebuffer_funcs ; 
 struct msm_format* FUNC9 (struct msm_kms*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_framebuffer *FUNC10(struct drm_device *dev,
		const struct drm_mode_fb_cmd2 *mode_cmd, struct drm_gem_object **bos)
{
	const struct drm_format_info *info = FUNC5(dev,
								 mode_cmd);
	struct msm_drm_private *priv = dev->dev_private;
	struct msm_kms *kms = priv->kms;
	struct msm_framebuffer *msm_fb = NULL;
	struct drm_framebuffer *fb;
	const struct msm_format *format;
	int ret, i, n;

	FUNC1("create framebuffer: dev=%p, mode_cmd=%p (%dx%d@%4.4s)",
			dev, mode_cmd, mode_cmd->width, mode_cmd->height,
			(char *)&mode_cmd->pixel_format);

	n = info->num_planes;
	format = kms->funcs->get_format(kms, mode_cmd->pixel_format,
			mode_cmd->modifier[0]);
	if (!format) {
		FUNC2(dev->dev, "unsupported pixel format: %4.4s\n",
				(char *)&mode_cmd->pixel_format);
		ret = -EINVAL;
		goto fail;
	}

	msm_fb = FUNC8(sizeof(*msm_fb), GFP_KERNEL);
	if (!msm_fb) {
		ret = -ENOMEM;
		goto fail;
	}

	fb = &msm_fb->base;

	msm_fb->format = format;

	if (n > FUNC0(fb->obj)) {
		ret = -EINVAL;
		goto fail;
	}

	for (i = 0; i < n; i++) {
		unsigned int width = mode_cmd->width / (i ? info->hsub : 1);
		unsigned int height = mode_cmd->height / (i ? info->vsub : 1);
		unsigned int min_size;

		min_size = (height - 1) * mode_cmd->pitches[i]
			 + width * info->cpp[i]
			 + mode_cmd->offsets[i];

		if (bos[i]->size < min_size) {
			ret = -EINVAL;
			goto fail;
		}

		msm_fb->base.obj[i] = bos[i];
	}

	FUNC6(dev, fb, mode_cmd);

	ret = FUNC4(dev, fb, &msm_framebuffer_funcs);
	if (ret) {
		FUNC2(dev->dev, "framebuffer init failed: %d\n", ret);
		goto fail;
	}

	FUNC1("create: FB ID: %d (%p)", fb->base.id, fb);

	return fb;

fail:
	FUNC7(msm_fb);

	return FUNC3(ret);
}