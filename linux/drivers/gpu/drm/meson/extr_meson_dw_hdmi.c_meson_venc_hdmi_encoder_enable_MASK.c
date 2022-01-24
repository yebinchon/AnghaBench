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
struct TYPE_2__ {scalar_t__ hdmi_use_enci; } ;
struct meson_drm {scalar_t__ io_base; TYPE_1__ venc; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  ENCI_VIDEO_EN ; 
 int /*<<< orphan*/  ENCP_VIDEO_EN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct meson_dw_hdmi* FUNC2 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct drm_encoder *encoder)
{
	struct meson_dw_hdmi *dw_hdmi = FUNC2(encoder);
	struct meson_drm *priv = dw_hdmi->priv;

	FUNC0("%s\n", priv->venc.hdmi_use_enci ? "VENCI" : "VENCP");

	if (priv->venc.hdmi_use_enci)
		FUNC3(1, priv->io_base + FUNC1(ENCI_VIDEO_EN));
	else
		FUNC3(1, priv->io_base + FUNC1(ENCP_VIDEO_EN));
}