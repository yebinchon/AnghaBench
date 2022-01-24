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
struct decon_context {int dummy; } ;

/* Variables and functions */
 int BLEND_NEW ; 
 int /*<<< orphan*/  DECON_BLENDCON ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int DRM_BLEND_ALPHA_OPAQUE ; 
#define  DRM_MODE_BLEND_COVERAGE 130 
#define  DRM_MODE_BLEND_PIXEL_NONE 129 
#define  DRM_MODE_BLEND_PREMULTI 128 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int VIDOSDxC_ALPHA0_RGB_MASK ; 
 int WINCONx_ALPHA_MUL_F ; 
 int WINCONx_ALPHA_SEL_F ; 
 int WINCONx_BLD_PIX_F ; 
 int WINCONx_BLEND_MODE_MASK ; 
 int /*<<< orphan*/  FUNC5 (struct decon_context*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC6(struct decon_context *ctx, unsigned int win,
				 unsigned int alpha, unsigned int pixel_alpha)
{
	u32 win_alpha = alpha >> 8;
	u32 val = 0;

	switch (pixel_alpha) {
	case DRM_MODE_BLEND_PIXEL_NONE:
		break;
	case DRM_MODE_BLEND_COVERAGE:
	case DRM_MODE_BLEND_PREMULTI:
	default:
		val |= WINCONx_ALPHA_SEL_F;
		val |= WINCONx_BLD_PIX_F;
		val |= WINCONx_ALPHA_MUL_F;
		break;
	}
	FUNC5(ctx, FUNC1(win), WINCONx_BLEND_MODE_MASK, val);

	if (alpha != DRM_BLEND_ALPHA_OPAQUE) {
		val = FUNC4(win_alpha) |
		      FUNC3(win_alpha) |
		      FUNC2(win_alpha);
		FUNC5(ctx, FUNC0(win),
			       VIDOSDxC_ALPHA0_RGB_MASK, val);
		FUNC5(ctx, DECON_BLENDCON, BLEND_NEW, BLEND_NEW);
	}
}