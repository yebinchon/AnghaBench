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
struct vmw_private {int active_display_unit; int /*<<< orphan*/  dev; int /*<<< orphan*/  reservation_sem; } ;
struct vmw_framebuffer_bo {int /*<<< orphan*/  base; } ;
struct drm_framebuffer {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  dev; } ;
struct drm_file {int dummy; } ;
struct drm_clip_rect {int /*<<< orphan*/  y2; int /*<<< orphan*/  x2; scalar_t__ y1; scalar_t__ x1; } ;

/* Variables and functions */
 unsigned int DRM_MODE_FB_DIRTY_ANNOTATE_COPY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
#define  vmw_du_legacy 128 
 int /*<<< orphan*/  FUNC6 (struct vmw_private*,int) ; 
 struct vmw_framebuffer_bo* FUNC7 (struct drm_framebuffer*) ; 
 int FUNC8 (struct vmw_private*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_clip_rect*,unsigned int,int) ; 
 struct vmw_private* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct drm_framebuffer *framebuffer,
				    struct drm_file *file_priv,
				    unsigned int flags, unsigned int color,
				    struct drm_clip_rect *clips,
				    unsigned int num_clips)
{
	struct vmw_private *dev_priv = FUNC9(framebuffer->dev);
	struct vmw_framebuffer_bo *vfbd =
		FUNC7(framebuffer);
	struct drm_clip_rect norect;
	int ret, increment = 1;

	FUNC1(dev_priv->dev);

	ret = FUNC3(&dev_priv->reservation_sem, true);
	if (FUNC5(ret != 0)) {
		FUNC2(dev_priv->dev);
		return ret;
	}

	if (!num_clips) {
		num_clips = 1;
		clips = &norect;
		norect.x1 = norect.y1 = 0;
		norect.x2 = framebuffer->width;
		norect.y2 = framebuffer->height;
	} else if (flags & DRM_MODE_FB_DIRTY_ANNOTATE_COPY) {
		num_clips /= 2;
		increment = 2;
	}

	switch (dev_priv->active_display_unit) {
	case vmw_du_legacy:
		ret = FUNC8(dev_priv, &vfbd->base, 0, 0,
					      clips, num_clips, increment);
		break;
	default:
		ret = -EINVAL;
		FUNC0(true, "Dirty called with invalid display system.\n");
		break;
	}

	FUNC6(dev_priv, false);
	FUNC4(&dev_priv->reservation_sem);

	FUNC2(dev_priv->dev);

	return ret;
}