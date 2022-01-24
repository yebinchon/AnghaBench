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
struct meson_dw_hdmi {struct meson_drm* priv; } ;
struct meson_drm {scalar_t__ io_base; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VPU_HDMI_FMT_CTRL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC3 (struct meson_dw_hdmi*,struct drm_display_mode*) ; 
 struct meson_dw_hdmi* FUNC4 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (struct meson_drm*,int,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct drm_encoder *encoder,
				   struct drm_display_mode *mode,
				   struct drm_display_mode *adjusted_mode)
{
	struct meson_dw_hdmi *dw_hdmi = FUNC4(encoder);
	struct meson_drm *priv = dw_hdmi->priv;
	int vic = FUNC2(mode);

	FUNC0("\"%s\" vic %d\n", mode->name, vic);

	/* VENC + VENC-DVI Mode setup */
	FUNC5(priv, vic, mode);

	/* VCLK Set clock */
	FUNC3(dw_hdmi, mode);

	/* Setup YUV444 to HDMI-TX, no 10bit diphering */
	FUNC6(0, priv->io_base + FUNC1(VPU_HDMI_FMT_CTRL));
}