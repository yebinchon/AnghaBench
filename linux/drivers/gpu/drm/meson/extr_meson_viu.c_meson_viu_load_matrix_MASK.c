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
struct meson_drm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RGB709_to_YUV709l_coeff ; 
 int /*<<< orphan*/  VIU_LUT_OSD_EOTF ; 
 int /*<<< orphan*/  VIU_LUT_OSD_OETF ; 
 int /*<<< orphan*/  VIU_MATRIX_OSD ; 
 int /*<<< orphan*/  VIU_MATRIX_OSD_EOTF ; 
 int /*<<< orphan*/  eotf_33_linear_mapping ; 
 int /*<<< orphan*/  eotf_bypass_coeff ; 
 int /*<<< orphan*/  FUNC0 (struct meson_drm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct meson_drm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  oetf_41_linear_mapping ; 

__attribute__((used)) static void FUNC2(struct meson_drm *priv)
{
	/* eotf lut bypass */
	FUNC0(priv, VIU_LUT_OSD_EOTF,
			      eotf_33_linear_mapping, /* R */
			      eotf_33_linear_mapping, /* G */
			      eotf_33_linear_mapping, /* B */
			      false);

	/* eotf matrix bypass */
	FUNC1(priv, VIU_MATRIX_OSD_EOTF,
				 eotf_bypass_coeff,
				 false);

	/* oetf lut bypass */
	FUNC0(priv, VIU_LUT_OSD_OETF,
			      oetf_41_linear_mapping, /* R */
			      oetf_41_linear_mapping, /* G */
			      oetf_41_linear_mapping, /* B */
			      false);

	/* osd matrix RGB709 to YUV709 limit */
	FUNC1(priv, VIU_MATRIX_OSD,
				 RGB709_to_YUV709l_coeff,
				 true);
}