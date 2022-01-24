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
struct meson_dw_hdmi {struct meson_drm* priv; } ;
struct TYPE_2__ {int hdmi_use_enci; } ;
struct meson_drm {TYPE_1__ venc; } ;
struct drm_display_mode {unsigned int clock; int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int,unsigned int,int) ; 
 int DRM_MODE_FLAG_DBLCLK ; 
 int /*<<< orphan*/  MESON_VCLK_TARGET_DMT ; 
 int /*<<< orphan*/  MESON_VCLK_TARGET_HDMI ; 
 int FUNC1 (struct drm_display_mode*) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct meson_drm*,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct meson_dw_hdmi *dw_hdmi,
			     struct drm_display_mode *mode)
{
	struct meson_drm *priv = dw_hdmi->priv;
	int vic = FUNC1(mode);
	unsigned int vclk_freq;
	unsigned int venc_freq;
	unsigned int hdmi_freq;

	vclk_freq = mode->clock;

	if (!vic) {
		FUNC3(priv, MESON_VCLK_TARGET_DMT, vclk_freq,
				 vclk_freq, vclk_freq, false);
		return;
	}

	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
		vclk_freq *= 2;

	venc_freq = vclk_freq;
	hdmi_freq = vclk_freq;

	if (FUNC4(vic))
		venc_freq *= 2;

	vclk_freq = FUNC2(venc_freq, hdmi_freq);

	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
		venc_freq /= 2;

	FUNC0("vclk:%d venc=%d hdmi=%d enci=%d\n",
		vclk_freq, venc_freq, hdmi_freq,
		priv->venc.hdmi_use_enci);

	FUNC3(priv, MESON_VCLK_TARGET_HDMI, vclk_freq,
			 venc_freq, hdmi_freq, priv->venc.hdmi_use_enci);
}