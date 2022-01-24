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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VPP_WRAP_OSD1_MATRIX_COEF00_01 ; 
 int /*<<< orphan*/  VPP_WRAP_OSD1_MATRIX_COEF02_10 ; 
 int /*<<< orphan*/  VPP_WRAP_OSD1_MATRIX_COEF11_12 ; 
 int /*<<< orphan*/  VPP_WRAP_OSD1_MATRIX_COEF20_21 ; 
 int /*<<< orphan*/  VPP_WRAP_OSD1_MATRIX_COEF22 ; 
 int /*<<< orphan*/  VPP_WRAP_OSD1_MATRIX_EN_CTRL ; 
 int /*<<< orphan*/  VPP_WRAP_OSD1_MATRIX_OFFSET0_1 ; 
 int /*<<< orphan*/  VPP_WRAP_OSD1_MATRIX_OFFSET2 ; 
 int /*<<< orphan*/  VPP_WRAP_OSD1_MATRIX_PRE_OFFSET0_1 ; 
 int /*<<< orphan*/  VPP_WRAP_OSD1_MATRIX_PRE_OFFSET2 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct meson_drm *priv,
					   int *m, bool csc_on)
{
	/* VPP WRAP OSD1 matrix */
	FUNC2(((m[0] & 0xfff) << 16) | (m[1] & 0xfff),
		priv->io_base + FUNC1(VPP_WRAP_OSD1_MATRIX_PRE_OFFSET0_1));
	FUNC2(m[2] & 0xfff,
		priv->io_base + FUNC1(VPP_WRAP_OSD1_MATRIX_PRE_OFFSET2));
	FUNC2(((m[3] & 0x1fff) << 16) | (m[4] & 0x1fff),
		priv->io_base + FUNC1(VPP_WRAP_OSD1_MATRIX_COEF00_01));
	FUNC2(((m[5] & 0x1fff) << 16) | (m[6] & 0x1fff),
		priv->io_base + FUNC1(VPP_WRAP_OSD1_MATRIX_COEF02_10));
	FUNC2(((m[7] & 0x1fff) << 16) | (m[8] & 0x1fff),
		priv->io_base + FUNC1(VPP_WRAP_OSD1_MATRIX_COEF11_12));
	FUNC2(((m[9] & 0x1fff) << 16) | (m[10] & 0x1fff),
		priv->io_base + FUNC1(VPP_WRAP_OSD1_MATRIX_COEF20_21));
	FUNC2((m[11] & 0x1fff) << 16,
		priv->io_base +	FUNC1(VPP_WRAP_OSD1_MATRIX_COEF22));

	FUNC2(((m[18] & 0xfff) << 16) | (m[19] & 0xfff),
		priv->io_base + FUNC1(VPP_WRAP_OSD1_MATRIX_OFFSET0_1));
	FUNC2(m[20] & 0xfff,
		priv->io_base + FUNC1(VPP_WRAP_OSD1_MATRIX_OFFSET2));

	FUNC3(FUNC0(0), csc_on ? FUNC0(0) : 0,
		priv->io_base + FUNC1(VPP_WRAP_OSD1_MATRIX_EN_CTRL));
}