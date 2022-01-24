#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct vc4_crtc {void** lut_b; void** lut_g; void** lut_r; } ;
struct drm_crtc {TYPE_1__* state; } ;
struct drm_color_lut {int /*<<< orphan*/  blue; int /*<<< orphan*/  green; int /*<<< orphan*/  red; } ;
struct TYPE_4__ {struct drm_color_lut* data; } ;
struct TYPE_3__ {TYPE_2__* gamma_lut; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC1 (TYPE_2__*) ; 
 struct vc4_crtc* FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*) ; 

__attribute__((used)) static void
FUNC4(struct drm_crtc *crtc)
{
	struct vc4_crtc *vc4_crtc = FUNC2(crtc);
	struct drm_color_lut *lut = crtc->state->gamma_lut->data;
	u32 length = FUNC1(crtc->state->gamma_lut);
	u32 i;

	for (i = 0; i < length; i++) {
		vc4_crtc->lut_r[i] = FUNC0(lut[i].red, 8);
		vc4_crtc->lut_g[i] = FUNC0(lut[i].green, 8);
		vc4_crtc->lut_b[i] = FUNC0(lut[i].blue, 8);
	}

	FUNC3(crtc);
}