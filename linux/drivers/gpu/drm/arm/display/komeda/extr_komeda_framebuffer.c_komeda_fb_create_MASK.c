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
struct drm_framebuffer {int /*<<< orphan*/ * obj; TYPE_1__* format; scalar_t__ modifier; } ;
struct komeda_fb {int is_va; struct drm_framebuffer base; int /*<<< orphan*/  format_caps; } ;
struct komeda_dev {scalar_t__ iommu; int /*<<< orphan*/  fmt_tbl; } ;
struct drm_mode_fb_cmd2 {int /*<<< orphan*/  pixel_format; int /*<<< orphan*/ * modifier; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct komeda_dev* dev_private; } ;
struct TYPE_2__ {int num_planes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct drm_framebuffer* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC2 (struct drm_device*,struct drm_framebuffer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_framebuffer*,struct drm_mode_fb_cmd2 const*) ; 
 int /*<<< orphan*/  FUNC5 (struct komeda_fb*) ; 
 int FUNC6 (struct komeda_fb*,struct drm_file*,struct drm_mode_fb_cmd2 const*) ; 
 int /*<<< orphan*/  komeda_fb_funcs ; 
 int FUNC7 (struct komeda_dev*,struct komeda_fb*,struct drm_file*,struct drm_mode_fb_cmd2 const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct komeda_fb* FUNC9 (int,int /*<<< orphan*/ ) ; 

struct drm_framebuffer *
FUNC10(struct drm_device *dev, struct drm_file *file,
		 const struct drm_mode_fb_cmd2 *mode_cmd)
{
	struct komeda_dev *mdev = dev->dev_private;
	struct komeda_fb *kfb;
	int ret = 0, i;

	kfb = FUNC9(sizeof(*kfb), GFP_KERNEL);
	if (!kfb)
		return FUNC1(-ENOMEM);

	kfb->format_caps = FUNC8(&mdev->fmt_tbl,
						  mode_cmd->pixel_format,
						  mode_cmd->modifier[0]);
	if (!kfb->format_caps) {
		FUNC0("FMT %x is not supported.\n",
			      mode_cmd->pixel_format);
		FUNC5(kfb);
		return FUNC1(-EINVAL);
	}

	FUNC4(dev, &kfb->base, mode_cmd);

	if (kfb->base.modifier)
		ret = FUNC6(kfb, file, mode_cmd);
	else
		ret = FUNC7(mdev, kfb, file, mode_cmd);
	if (ret < 0)
		goto err_cleanup;

	ret = FUNC2(dev, &kfb->base, &komeda_fb_funcs);
	if (ret < 0) {
		FUNC0("failed to initialize fb\n");

		goto err_cleanup;
	}

	kfb->is_va = mdev->iommu ? true : false;

	return &kfb->base;

err_cleanup:
	for (i = 0; i < kfb->base.format->num_planes; i++)
		FUNC3(kfb->base.obj[i]);

	FUNC5(kfb);
	return FUNC1(ret);
}