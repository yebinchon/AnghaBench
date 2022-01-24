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
typedef  int const u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct malidp_hw_device {scalar_t__ mw_state; } ;
typedef  int const s32 ;
typedef  int s16 ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int const MALIDP500_SE_CONTROL ; 
 int MALIDP500_SE_MEMWRITE_BASE ; 
 int const MALIDP500_SE_MEMWRITE_OUT_SIZE ; 
 int const MALIDP500_SE_RGB_YUV_COEFFS ; 
 int MALIDP_COLORADJ_NUM_COEFFS ; 
 int /*<<< orphan*/  MALIDP_DE_BLOCK ; 
 int const MALIDP_DE_DISPLAY_FUNC ; 
 int const FUNC0 (int /*<<< orphan*/ ) ; 
 int const FUNC1 (int /*<<< orphan*/ ) ; 
 int const MALIDP_MW_FORMAT ; 
 int const MALIDP_MW_P1_PTR_HIGH ; 
 int const MALIDP_MW_P1_PTR_LOW ; 
 int const MALIDP_MW_P1_STRIDE ; 
 int const MALIDP_MW_P2_PTR_HIGH ; 
 int const MALIDP_MW_P2_PTR_LOW ; 
 int const MALIDP_MW_P2_STRIDE ; 
 int /*<<< orphan*/  MALIDP_SCALE_ENGINE_EN ; 
 int /*<<< orphan*/  MALIDP_SE_MEMWRITE_EN ; 
 scalar_t__ MW_NOT_ENABLED ; 
 scalar_t__ MW_RESTART ; 
 scalar_t__ MW_START ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int const FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct malidp_hw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct malidp_hw_device*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC6 (struct malidp_hw_device*,int const,int const) ; 
 int const FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct malidp_hw_device *hwdev,
				     dma_addr_t *addrs, s32 *pitches,
				     int num_planes, u16 w, u16 h, u32 fmt_id,
				     const s16 *rgb2yuv_coeffs)
{
	u32 base = MALIDP500_SE_MEMWRITE_BASE;
	u32 de_base = FUNC4(hwdev, MALIDP_DE_BLOCK);

	/* enable the scaling engine block */
	FUNC5(hwdev, MALIDP_SCALE_ENGINE_EN, de_base + MALIDP_DE_DISPLAY_FUNC);

	/* restart the writeback if already enabled */
	if (hwdev->mw_state != MW_NOT_ENABLED)
		hwdev->mw_state = MW_RESTART;
	else
		hwdev->mw_state = MW_START;

	FUNC6(hwdev, fmt_id, base + MALIDP_MW_FORMAT);
	switch (num_planes) {
	case 2:
		FUNC6(hwdev, FUNC3(addrs[1]), base + MALIDP_MW_P2_PTR_LOW);
		FUNC6(hwdev, FUNC7(addrs[1]), base + MALIDP_MW_P2_PTR_HIGH);
		FUNC6(hwdev, pitches[1], base + MALIDP_MW_P2_STRIDE);
		/* fall through */
	case 1:
		FUNC6(hwdev, FUNC3(addrs[0]), base + MALIDP_MW_P1_PTR_LOW);
		FUNC6(hwdev, FUNC7(addrs[0]), base + MALIDP_MW_P1_PTR_HIGH);
		FUNC6(hwdev, pitches[0], base + MALIDP_MW_P1_STRIDE);
		break;
	default:
		FUNC2(1, "Invalid number of planes");
	}

	FUNC6(hwdev, FUNC0(w) | FUNC1(h),
			MALIDP500_SE_MEMWRITE_OUT_SIZE);

	if (rgb2yuv_coeffs) {
		int i;

		for (i = 0; i < MALIDP_COLORADJ_NUM_COEFFS; i++) {
			FUNC6(hwdev, rgb2yuv_coeffs[i],
					MALIDP500_SE_RGB_YUV_COEFFS + i * 4);
		}
	}

	FUNC5(hwdev, MALIDP_SE_MEMWRITE_EN, MALIDP500_SE_CONTROL);

	return 0;
}