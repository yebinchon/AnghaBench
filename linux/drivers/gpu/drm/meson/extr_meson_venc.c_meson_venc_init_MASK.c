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
struct TYPE_2__ {int /*<<< orphan*/  current_mode; } ;
struct meson_drm {TYPE_1__ venc; scalar_t__ io_base; int /*<<< orphan*/  hhi; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENCI_VIDEO_EN ; 
 int /*<<< orphan*/  ENCL_VIDEO_EN ; 
 int /*<<< orphan*/  ENCP_VIDEO_EN ; 
 int /*<<< orphan*/  HHI_HDMI_PHY_CNTL0 ; 
 int /*<<< orphan*/  HHI_VDAC_CNTL0 ; 
 int /*<<< orphan*/  HHI_VDAC_CNTL0_G12A ; 
 int /*<<< orphan*/  HHI_VDAC_CNTL1 ; 
 int /*<<< orphan*/  HHI_VDAC_CNTL1_G12A ; 
 int /*<<< orphan*/  MESON_VENC_MODE_NONE ; 
 int /*<<< orphan*/  VENC_VDAC_SETTING ; 
 int /*<<< orphan*/  VPU_COMPATIBLE_G12A ; 
 int VPU_HDMI_ENCI_DATA_TO_HDMI ; 
 int VPU_HDMI_ENCP_DATA_TO_HDMI ; 
 int /*<<< orphan*/  VPU_HDMI_SETTING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct meson_drm*) ; 
 scalar_t__ FUNC2 (struct meson_drm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

void FUNC6(struct meson_drm *priv)
{
	/* Disable CVBS VDAC */
	if (FUNC2(priv, VPU_COMPATIBLE_G12A)) {
		FUNC3(priv->hhi, HHI_VDAC_CNTL0_G12A, 0);
		FUNC3(priv->hhi, HHI_VDAC_CNTL1_G12A, 8);
	} else {
		FUNC3(priv->hhi, HHI_VDAC_CNTL0, 0);
		FUNC3(priv->hhi, HHI_VDAC_CNTL1, 8);
	}

	/* Power Down Dacs */
	FUNC5(0xff, priv->io_base + FUNC0(VENC_VDAC_SETTING));

	/* Disable HDMI PHY */
	FUNC3(priv->hhi, HHI_HDMI_PHY_CNTL0, 0);

	/* Disable HDMI */
	FUNC4(VPU_HDMI_ENCI_DATA_TO_HDMI |
			    VPU_HDMI_ENCP_DATA_TO_HDMI, 0,
			    priv->io_base + FUNC0(VPU_HDMI_SETTING));

	/* Disable all encoders */
	FUNC5(0, priv->io_base + FUNC0(ENCI_VIDEO_EN));
	FUNC5(0, priv->io_base + FUNC0(ENCP_VIDEO_EN));
	FUNC5(0, priv->io_base + FUNC0(ENCL_VIDEO_EN));

	/* Disable VSync IRQ */
	FUNC1(priv);

	priv->venc.current_mode = MESON_VENC_MODE_NONE;
}