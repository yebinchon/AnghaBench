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
struct meson_venc_cvbs {struct meson_drm* priv; } ;
struct meson_drm {int /*<<< orphan*/  hhi; scalar_t__ io_base; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HHI_VDAC_CNTL0 ; 
 int /*<<< orphan*/  HHI_VDAC_CNTL0_G12A ; 
 int /*<<< orphan*/  HHI_VDAC_CNTL1 ; 
 int /*<<< orphan*/  HHI_VDAC_CNTL1_G12A ; 
 int /*<<< orphan*/  VENC_VDAC_DACSEL0 ; 
 int /*<<< orphan*/  VENC_VDAC_SEL_ATV_DMD ; 
 int /*<<< orphan*/  VPU_COMPATIBLE_G12A ; 
 int /*<<< orphan*/  VPU_COMPATIBLE_GXBB ; 
 int /*<<< orphan*/  VPU_COMPATIBLE_GXL ; 
 int /*<<< orphan*/  VPU_COMPATIBLE_GXM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct meson_venc_cvbs* FUNC1 (struct drm_encoder*) ; 
 scalar_t__ FUNC2 (struct meson_drm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct drm_encoder *encoder)
{
	struct meson_venc_cvbs *meson_venc_cvbs =
					FUNC1(encoder);
	struct meson_drm *priv = meson_venc_cvbs->priv;

	/* VDAC0 source is not from ATV */
	FUNC4(VENC_VDAC_SEL_ATV_DMD, 0,
			    priv->io_base + FUNC0(VENC_VDAC_DACSEL0));

	if (FUNC2(priv, VPU_COMPATIBLE_GXBB)) {
		FUNC3(priv->hhi, HHI_VDAC_CNTL0, 1);
		FUNC3(priv->hhi, HHI_VDAC_CNTL1, 0);
	} else if (FUNC2(priv, VPU_COMPATIBLE_GXM) ||
		 FUNC2(priv, VPU_COMPATIBLE_GXL)) {
		FUNC3(priv->hhi, HHI_VDAC_CNTL0, 0xf0001);
		FUNC3(priv->hhi, HHI_VDAC_CNTL1, 0);
	} else if (FUNC2(priv, VPU_COMPATIBLE_G12A)) {
		FUNC3(priv->hhi, HHI_VDAC_CNTL0_G12A, 0x906001);
		FUNC3(priv->hhi, HHI_VDAC_CNTL1_G12A, 0);
	}
}