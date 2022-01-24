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
struct psb_pipe {int htotal; int hsync; int vtotal; int vsync; } ;
struct psb_offset {int /*<<< orphan*/  vsync; int /*<<< orphan*/  vtotal; int /*<<< orphan*/  hsync; int /*<<< orphan*/  htotal; } ;
struct gma_crtc {int pipe; } ;
struct TYPE_2__ {struct psb_pipe* pipe; } ;
struct drm_psb_private {struct psb_offset* regmap; TYPE_1__ regs; } ;
struct drm_display_mode {int hdisplay; int htotal; int hsync_start; int hsync_end; int vdisplay; int vtotal; int vsync_start; int vsync_end; int /*<<< orphan*/  clock; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_display_mode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_display_mode*) ; 
 scalar_t__ FUNC3 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 struct drm_display_mode* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,struct drm_crtc*) ; 
 struct gma_crtc* FUNC7 (struct drm_crtc*) ; 

struct drm_display_mode *FUNC8(struct drm_device *dev,
					     struct drm_crtc *crtc)
{
	struct gma_crtc *gma_crtc = FUNC7(crtc);
	int pipe = gma_crtc->pipe;
	struct drm_display_mode *mode;
	int htot;
	int hsync;
	int vtot;
	int vsync;
	struct drm_psb_private *dev_priv = dev->dev_private;
	struct psb_pipe *p = &dev_priv->regs.pipe[pipe];
	const struct psb_offset *map = &dev_priv->regmap[pipe];

	if (FUNC3(dev, false)) {
		htot = FUNC0(map->htotal);
		hsync = FUNC0(map->hsync);
		vtot = FUNC0(map->vtotal);
		vsync = FUNC0(map->vsync);
		FUNC4(dev);
	} else {
		htot = p->htotal;
		hsync = p->hsync;
		vtot = p->vtotal;
		vsync = p->vsync;
	}

	mode = FUNC5(sizeof(*mode), GFP_KERNEL);
	if (!mode)
		return NULL;

	mode->clock = FUNC6(dev, crtc);
	mode->hdisplay = (htot & 0xffff) + 1;
	mode->htotal = ((htot & 0xffff0000) >> 16) + 1;
	mode->hsync_start = (hsync & 0xffff) + 1;
	mode->hsync_end = ((hsync & 0xffff0000) >> 16) + 1;
	mode->vdisplay = (vtot & 0xffff) + 1;
	mode->vtotal = ((vtot & 0xffff0000) >> 16) + 1;
	mode->vsync_start = (vsync & 0xffff) + 1;
	mode->vsync_end = ((vsync & 0xffff0000) >> 16) + 1;

	FUNC2(mode);
	FUNC1(mode, 0);

	return mode;
}