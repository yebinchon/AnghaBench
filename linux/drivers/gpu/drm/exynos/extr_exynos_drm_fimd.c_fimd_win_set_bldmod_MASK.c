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
typedef  int u32 ;
struct fimd_context {scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLENDCON ; 
 int BLENDCON_NEW_8BIT_ALPHA_VALUE ; 
 int /*<<< orphan*/  BLENDCON_NEW_MASK ; 
#define  DRM_MODE_BLEND_COVERAGE 130 
#define  DRM_MODE_BLEND_PIXEL_NONE 129 
#define  DRM_MODE_BLEND_PREMULTI 128 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 scalar_t__ FUNC6 (unsigned int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 scalar_t__ FUNC10 (unsigned int) ; 
 scalar_t__ FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 
 int WINCON1_ALPHA_MUL ; 
 int WINCON1_ALPHA_SEL ; 
 int WINCON1_BLD_PIX ; 
 int /*<<< orphan*/  WINCONx_BLEND_MODE_MASK ; 
 int /*<<< orphan*/  FUNC13 (struct fimd_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC15(struct fimd_context *ctx, unsigned int win,
				unsigned int alpha, unsigned int pixel_alpha)
{
	u32 win_alpha_l = (alpha >> 8) & 0xf;
	u32 win_alpha_h = alpha >> 12;
	u32 val = 0;

	switch (pixel_alpha) {
	case DRM_MODE_BLEND_PIXEL_NONE:
		break;
	case DRM_MODE_BLEND_COVERAGE:
	case DRM_MODE_BLEND_PREMULTI:
	default:
		val |= WINCON1_ALPHA_SEL;
		val |= WINCON1_BLD_PIX;
		val |= WINCON1_ALPHA_MUL;
		break;
	}
	FUNC13(ctx, FUNC12(win), WINCONx_BLEND_MODE_MASK, val);

	/* OSD alpha */
	val = FUNC2(win_alpha_h) |
		FUNC1(win_alpha_h) |
		FUNC0(win_alpha_h) |
		FUNC5(0x0) |
		FUNC4(0x0) |
		FUNC3(0x0);
	FUNC14(val, ctx->regs + FUNC6(win));

	val = FUNC9(win_alpha_l) | FUNC8(win_alpha_l) |
		FUNC7(win_alpha_l);
	FUNC14(val, ctx->regs + FUNC10(win));

	val = FUNC9(0x0) | FUNC8(0x0) |
		FUNC7(0x0);
	FUNC14(val, ctx->regs + FUNC11(win));

	FUNC13(ctx, BLENDCON, BLENDCON_NEW_MASK,
			BLENDCON_NEW_8BIT_ALPHA_VALUE);
}