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
struct meson_drm {struct drm_crtc* crtc; TYPE_1__* drm; int /*<<< orphan*/  primary_plane; } ;
struct drm_crtc {int dummy; } ;
struct meson_crtc {int /*<<< orphan*/  enable_vd1; int /*<<< orphan*/  enable_osd1; int /*<<< orphan*/  viu_offset; struct drm_crtc base; struct meson_drm* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MESON_G12A_VIU_OFFSET ; 
 int /*<<< orphan*/  VPU_COMPATIBLE_G12A ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct meson_crtc* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,struct drm_crtc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  meson_crtc_enable_osd1 ; 
 int /*<<< orphan*/  meson_crtc_enable_vd1 ; 
 int /*<<< orphan*/  meson_crtc_funcs ; 
 int /*<<< orphan*/  meson_crtc_helper_funcs ; 
 int /*<<< orphan*/  meson_g12a_crtc_enable_osd1 ; 
 int /*<<< orphan*/  meson_g12a_crtc_enable_vd1 ; 
 int /*<<< orphan*/  meson_g12a_crtc_helper_funcs ; 
 scalar_t__ FUNC4 (struct meson_drm*,int /*<<< orphan*/ ) ; 

int FUNC5(struct meson_drm *priv)
{
	struct meson_crtc *meson_crtc;
	struct drm_crtc *crtc;
	int ret;

	meson_crtc = FUNC1(priv->drm->dev, sizeof(*meson_crtc),
				  GFP_KERNEL);
	if (!meson_crtc)
		return -ENOMEM;

	meson_crtc->priv = priv;
	crtc = &meson_crtc->base;
	ret = FUNC3(priv->drm, crtc,
					priv->primary_plane, NULL,
					&meson_crtc_funcs, "meson_crtc");
	if (ret) {
		FUNC0(priv->drm->dev, "Failed to init CRTC\n");
		return ret;
	}

	if (FUNC4(priv, VPU_COMPATIBLE_G12A)) {
		meson_crtc->enable_osd1 = meson_g12a_crtc_enable_osd1;
		meson_crtc->enable_vd1 = meson_g12a_crtc_enable_vd1;
		meson_crtc->viu_offset = MESON_G12A_VIU_OFFSET;
		FUNC2(crtc, &meson_g12a_crtc_helper_funcs);
	} else {
		meson_crtc->enable_osd1 = meson_crtc_enable_osd1;
		meson_crtc->enable_vd1 = meson_crtc_enable_vd1;
		FUNC2(crtc, &meson_crtc_helper_funcs);
	}

	priv->crtc = crtc;

	return 0;
}