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
struct msm_drm_private {int /*<<< orphan*/  num_crtcs; struct drm_plane** crtcs; int /*<<< orphan*/  num_planes; struct drm_plane** planes; } ;
struct mdp4_kms {struct drm_device* dev; } ;
struct drm_plane {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; struct msm_drm_private* dev_private; } ;
typedef  struct drm_plane drm_crtc ;
typedef  enum mdp4_pipe { ____Placeholder_mdp4_pipe } mdp4_pipe ;
typedef  enum mdp4_dma { ____Placeholder_mdp4_dma } mdp4_dma ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
#define  DMA_E 136 
#define  DMA_P 135 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
#define  DRM_MODE_ENCODER_DSI 134 
#define  DRM_MODE_ENCODER_LVDS 133 
#define  DRM_MODE_ENCODER_TMDS 132 
 scalar_t__ FUNC2 (struct drm_plane*) ; 
 int FUNC3 (struct drm_plane*) ; 
#define  RGB1 131 
#define  RGB2 130 
#define  VG1 129 
#define  VG2 128 
 struct drm_plane* FUNC4 (struct drm_device*,struct drm_plane*,int /*<<< orphan*/ ,int,int const) ; 
 int FUNC5 (struct mdp4_kms*,int const) ; 
 struct drm_plane* FUNC6 (struct drm_device*,int const,int) ; 

__attribute__((used)) static int FUNC7(struct mdp4_kms *mdp4_kms)
{
	struct drm_device *dev = mdp4_kms->dev;
	struct msm_drm_private *priv = dev->dev_private;
	struct drm_plane *plane;
	struct drm_crtc *crtc;
	int i, ret;
	static const enum mdp4_pipe rgb_planes[] = {
		RGB1, RGB2,
	};
	static const enum mdp4_pipe vg_planes[] = {
		VG1, VG2,
	};
	static const enum mdp4_dma mdp4_crtcs[] = {
		DMA_P, DMA_E,
	};
	static const char * const mdp4_crtc_names[] = {
		"DMA_P", "DMA_E",
	};
	static const int mdp4_intfs[] = {
		DRM_MODE_ENCODER_LVDS,
		DRM_MODE_ENCODER_DSI,
		DRM_MODE_ENCODER_TMDS,
	};

	/* construct non-private planes: */
	for (i = 0; i < FUNC0(vg_planes); i++) {
		plane = FUNC6(dev, vg_planes[i], false);
		if (FUNC2(plane)) {
			FUNC1(dev->dev,
				"failed to construct plane for VG%d\n", i + 1);
			ret = FUNC3(plane);
			goto fail;
		}
		priv->planes[priv->num_planes++] = plane;
	}

	for (i = 0; i < FUNC0(mdp4_crtcs); i++) {
		plane = FUNC6(dev, rgb_planes[i], true);
		if (FUNC2(plane)) {
			FUNC1(dev->dev,
				"failed to construct plane for RGB%d\n", i + 1);
			ret = FUNC3(plane);
			goto fail;
		}

		crtc  = FUNC4(dev, plane, priv->num_crtcs, i,
				mdp4_crtcs[i]);
		if (FUNC2(crtc)) {
			FUNC1(dev->dev, "failed to construct crtc for %s\n",
				mdp4_crtc_names[i]);
			ret = FUNC3(crtc);
			goto fail;
		}

		priv->crtcs[priv->num_crtcs++] = crtc;
	}

	/*
	 * we currently set up two relatively fixed paths:
	 *
	 * LCDC/LVDS path: RGB1 -> DMA_P -> LCDC -> LVDS
	 *			or
	 * DSI path: RGB1 -> DMA_P -> DSI1 -> DSI Panel
	 *
	 * DTV/HDMI path: RGB2 -> DMA_E -> DTV -> HDMI
	 */

	for (i = 0; i < FUNC0(mdp4_intfs); i++) {
		ret = FUNC5(mdp4_kms, mdp4_intfs[i]);
		if (ret) {
			FUNC1(dev->dev, "failed to initialize intf: %d, %d\n",
				i, ret);
			goto fail;
		}
	}

	return 0;

fail:
	return ret;
}