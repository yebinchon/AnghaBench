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
struct fimd_context {int dummy; } ;

/* Variables and functions */
 int BLENDEQ_ALPHA0 ; 
 int BLENDEQ_ALPHA_A ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int BLENDEQ_ONE ; 
 int BLENDEQ_ONE_MINUS_ALPHA_A ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned int DRM_BLEND_ALPHA_OPAQUE ; 
#define  DRM_MODE_BLEND_COVERAGE 130 
#define  DRM_MODE_BLEND_PIXEL_NONE 129 
#define  DRM_MODE_BLEND_PREMULTI 128 
 int /*<<< orphan*/  FUNC3 (struct fimd_context*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC4(struct fimd_context *ctx, unsigned int win,
			       unsigned int alpha, unsigned int pixel_alpha)
{
	u32 mask = FUNC0(0xf) | FUNC1(0xf);
	u32 val = 0;

	switch (pixel_alpha) {
	case DRM_MODE_BLEND_PIXEL_NONE:
	case DRM_MODE_BLEND_COVERAGE:
		val |= FUNC0(BLENDEQ_ALPHA_A);
		val |= FUNC1(BLENDEQ_ONE_MINUS_ALPHA_A);
		break;
	case DRM_MODE_BLEND_PREMULTI:
	default:
		if (alpha != DRM_BLEND_ALPHA_OPAQUE) {
			val |= FUNC0(BLENDEQ_ALPHA0);
			val |= FUNC1(BLENDEQ_ONE_MINUS_ALPHA_A);
		} else {
			val |= FUNC0(BLENDEQ_ONE);
			val |= FUNC1(BLENDEQ_ONE_MINUS_ALPHA_A);
		}
		break;
	}
	FUNC3(ctx, FUNC2(win), mask, val);
}