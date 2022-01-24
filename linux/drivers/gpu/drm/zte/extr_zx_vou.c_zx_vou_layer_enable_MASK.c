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
struct zx_vou_hw {scalar_t__ osd; scalar_t__ vouctl; } ;
struct zx_plane {struct vou_layer_bits* bits; } ;
struct zx_crtc {scalar_t__ chn_type; struct zx_vou_hw* vou; } ;
struct vou_layer_bits {int /*<<< orphan*/  enable; int /*<<< orphan*/  clksel; int /*<<< orphan*/  chnsel; } ;
struct drm_plane {TYPE_1__* state; } ;
struct TYPE_2__ {int /*<<< orphan*/  crtc; } ;

/* Variables and functions */
 scalar_t__ OSD_CTRL0 ; 
 scalar_t__ VOU_CHN_MAIN ; 
 scalar_t__ VOU_CLK_SEL ; 
 struct zx_crtc* FUNC0 (int /*<<< orphan*/ ) ; 
 struct zx_plane* FUNC1 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct drm_plane *plane)
{
	struct zx_crtc *zcrtc = FUNC0(plane->state->crtc);
	struct zx_vou_hw *vou = zcrtc->vou;
	struct zx_plane *zplane = FUNC1(plane);
	const struct vou_layer_bits *bits = zplane->bits;

	if (zcrtc->chn_type == VOU_CHN_MAIN) {
		FUNC2(vou->osd + OSD_CTRL0, bits->chnsel, 0);
		FUNC2(vou->vouctl + VOU_CLK_SEL, bits->clksel, 0);
	} else {
		FUNC2(vou->osd + OSD_CTRL0, bits->chnsel,
			       bits->chnsel);
		FUNC2(vou->vouctl + VOU_CLK_SEL, bits->clksel,
			       bits->clksel);
	}

	FUNC2(vou->osd + OSD_CTRL0, bits->enable, bits->enable);
}