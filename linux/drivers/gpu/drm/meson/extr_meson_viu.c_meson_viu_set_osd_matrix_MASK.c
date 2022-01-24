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
struct meson_drm {scalar_t__ io_base; } ;
typedef  enum viu_matrix_sel_e { ____Placeholder_viu_matrix_sel_e } viu_matrix_sel_e ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int VIU_MATRIX_OSD ; 
 int VIU_MATRIX_OSD_EOTF ; 
 scalar_t__ VIU_OSD1_EOTF_CTL ; 
 scalar_t__ VIU_OSD1_MATRIX_COEF00_01 ; 
 scalar_t__ VIU_OSD1_MATRIX_COEF02_10 ; 
 scalar_t__ VIU_OSD1_MATRIX_COEF11_12 ; 
 scalar_t__ VIU_OSD1_MATRIX_COEF20_21 ; 
 scalar_t__ VIU_OSD1_MATRIX_COEF22_30 ; 
 scalar_t__ VIU_OSD1_MATRIX_COEF31_32 ; 
 scalar_t__ VIU_OSD1_MATRIX_COEF40_41 ; 
 scalar_t__ VIU_OSD1_MATRIX_COLMOD_COEF42 ; 
 scalar_t__ VIU_OSD1_MATRIX_CTRL ; 
 scalar_t__ VIU_OSD1_MATRIX_OFFSET0_1 ; 
 scalar_t__ VIU_OSD1_MATRIX_OFFSET2 ; 
 scalar_t__ VIU_OSD1_MATRIX_PRE_OFFSET0_1 ; 
 scalar_t__ VIU_OSD1_MATRIX_PRE_OFFSET2 ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct meson_drm *priv,
				     enum viu_matrix_sel_e m_select,
			      int *m, bool csc_on)
{
	if (m_select == VIU_MATRIX_OSD) {
		/* osd matrix, VIU_MATRIX_0 */
		FUNC2(((m[0] & 0xfff) << 16) | (m[1] & 0xfff),
			priv->io_base + FUNC1(VIU_OSD1_MATRIX_PRE_OFFSET0_1));
		FUNC2(m[2] & 0xfff,
			priv->io_base + FUNC1(VIU_OSD1_MATRIX_PRE_OFFSET2));
		FUNC2(((m[3] & 0x1fff) << 16) | (m[4] & 0x1fff),
			priv->io_base + FUNC1(VIU_OSD1_MATRIX_COEF00_01));
		FUNC2(((m[5] & 0x1fff) << 16) | (m[6] & 0x1fff),
			priv->io_base + FUNC1(VIU_OSD1_MATRIX_COEF02_10));
		FUNC2(((m[7] & 0x1fff) << 16) | (m[8] & 0x1fff),
			priv->io_base + FUNC1(VIU_OSD1_MATRIX_COEF11_12));
		FUNC2(((m[9] & 0x1fff) << 16) | (m[10] & 0x1fff),
			priv->io_base + FUNC1(VIU_OSD1_MATRIX_COEF20_21));

		if (m[21]) {
			FUNC2(((m[11] & 0x1fff) << 16) | (m[12] & 0x1fff),
				priv->io_base +
					FUNC1(VIU_OSD1_MATRIX_COEF22_30));
			FUNC2(((m[13] & 0x1fff) << 16) | (m[14] & 0x1fff),
				priv->io_base +
					FUNC1(VIU_OSD1_MATRIX_COEF31_32));
			FUNC2(((m[15] & 0x1fff) << 16) | (m[16] & 0x1fff),
				priv->io_base +
					FUNC1(VIU_OSD1_MATRIX_COEF40_41));
			FUNC2(m[17] & 0x1fff, priv->io_base +
				FUNC1(VIU_OSD1_MATRIX_COLMOD_COEF42));
		} else
			FUNC2((m[11] & 0x1fff) << 16, priv->io_base +
				FUNC1(VIU_OSD1_MATRIX_COEF22_30));

		FUNC2(((m[18] & 0xfff) << 16) | (m[19] & 0xfff),
			priv->io_base + FUNC1(VIU_OSD1_MATRIX_OFFSET0_1));
		FUNC2(m[20] & 0xfff,
			priv->io_base + FUNC1(VIU_OSD1_MATRIX_OFFSET2));

		FUNC3(3 << 30, m[21] << 30,
			priv->io_base + FUNC1(VIU_OSD1_MATRIX_COLMOD_COEF42));
		FUNC3(7 << 16, m[22] << 16,
			priv->io_base + FUNC1(VIU_OSD1_MATRIX_COLMOD_COEF42));

		/* 23 reserved for clipping control */
		FUNC3(FUNC0(0), csc_on ? FUNC0(0) : 0,
			priv->io_base + FUNC1(VIU_OSD1_MATRIX_CTRL));
		FUNC3(FUNC0(1), 0,
			priv->io_base + FUNC1(VIU_OSD1_MATRIX_CTRL));
	} else if (m_select == VIU_MATRIX_OSD_EOTF) {
		int i;

		/* osd eotf matrix, VIU_MATRIX_OSD_EOTF */
		for (i = 0; i < 5; i++)
			FUNC2(((m[i * 2] & 0x1fff) << 16) |
				(m[i * 2 + 1] & 0x1fff), priv->io_base +
				FUNC1(VIU_OSD1_EOTF_CTL + i + 1));

		FUNC3(FUNC0(30), csc_on ? FUNC0(30) : 0,
			priv->io_base + FUNC1(VIU_OSD1_EOTF_CTL));
		FUNC3(FUNC0(31), csc_on ? FUNC0(31) : 0,
			priv->io_base + FUNC1(VIU_OSD1_EOTF_CTL));
	}
}