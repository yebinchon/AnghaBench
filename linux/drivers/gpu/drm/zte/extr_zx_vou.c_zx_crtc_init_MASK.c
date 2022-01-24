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
struct zx_vou_hw {struct zx_crtc* aux_crtc; struct zx_crtc* main_crtc; scalar_t__ osd; scalar_t__ otfppu; struct device* dev; } ;
struct zx_plane {int /*<<< orphan*/  plane; int /*<<< orphan*/ * bits; scalar_t__ rsz; scalar_t__ hbsc; scalar_t__ csc; scalar_t__ layer; struct device* dev; } ;
struct zx_crtc {int chn_type; int /*<<< orphan*/  crtc; int /*<<< orphan*/ * primary; int /*<<< orphan*/  pixclk; int /*<<< orphan*/ * bits; int /*<<< orphan*/ * regs; scalar_t__ dither; scalar_t__ chncsc; scalar_t__ chnreg; struct zx_vou_hw* vou; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;
typedef  enum vou_chn_type { ____Placeholder_vou_chn_type } vou_chn_type ;

/* Variables and functions */
 scalar_t__ AUX_CHN_CSC_OFFSET ; 
 scalar_t__ AUX_DITHER_OFFSET ; 
 scalar_t__ AUX_GL_CSC_OFFSET ; 
 scalar_t__ AUX_GL_OFFSET ; 
 scalar_t__ AUX_HBSC_OFFSET ; 
 scalar_t__ AUX_RSZ_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  DRM_PLANE_TYPE_PRIMARY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAIN_CHN_CSC_OFFSET ; 
 scalar_t__ MAIN_DITHER_OFFSET ; 
 scalar_t__ MAIN_GL_CSC_OFFSET ; 
 scalar_t__ MAIN_GL_OFFSET ; 
 scalar_t__ MAIN_HBSC_OFFSET ; 
 scalar_t__ MAIN_RSZ_OFFSET ; 
 scalar_t__ OSD_AUX_CHN ; 
 scalar_t__ OSD_MAIN_CHN ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int VOU_CHN_MAIN ; 
 int /*<<< orphan*/  aux_crtc_bits ; 
 int /*<<< orphan*/  aux_crtc_regs ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  main_crtc_bits ; 
 int /*<<< orphan*/  main_crtc_regs ; 
 int /*<<< orphan*/  zx_crtc_funcs ; 
 int /*<<< orphan*/  zx_crtc_helper_funcs ; 
 int /*<<< orphan*/ * zx_gl_bits ; 
 int FUNC7 (struct drm_device*,struct zx_plane*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct drm_device *drm, struct zx_vou_hw *vou,
			enum vou_chn_type chn_type)
{
	struct device *dev = vou->dev;
	struct zx_plane *zplane;
	struct zx_crtc *zcrtc;
	int ret;

	zcrtc = FUNC4(dev, sizeof(*zcrtc), GFP_KERNEL);
	if (!zcrtc)
		return -ENOMEM;

	zcrtc->vou = vou;
	zcrtc->chn_type = chn_type;

	zplane = FUNC4(dev, sizeof(*zplane), GFP_KERNEL);
	if (!zplane)
		return -ENOMEM;

	zplane->dev = dev;

	if (chn_type == VOU_CHN_MAIN) {
		zplane->layer = vou->osd + MAIN_GL_OFFSET;
		zplane->csc = vou->osd + MAIN_GL_CSC_OFFSET;
		zplane->hbsc = vou->osd + MAIN_HBSC_OFFSET;
		zplane->rsz = vou->otfppu + MAIN_RSZ_OFFSET;
		zplane->bits = &zx_gl_bits[0];
		zcrtc->chnreg = vou->osd + OSD_MAIN_CHN;
		zcrtc->chncsc = vou->osd + MAIN_CHN_CSC_OFFSET;
		zcrtc->dither = vou->osd + MAIN_DITHER_OFFSET;
		zcrtc->regs = &main_crtc_regs;
		zcrtc->bits = &main_crtc_bits;
	} else {
		zplane->layer = vou->osd + AUX_GL_OFFSET;
		zplane->csc = vou->osd + AUX_GL_CSC_OFFSET;
		zplane->hbsc = vou->osd + AUX_HBSC_OFFSET;
		zplane->rsz = vou->otfppu + AUX_RSZ_OFFSET;
		zplane->bits = &zx_gl_bits[1];
		zcrtc->chnreg = vou->osd + OSD_AUX_CHN;
		zcrtc->chncsc = vou->osd + AUX_CHN_CSC_OFFSET;
		zcrtc->dither = vou->osd + AUX_DITHER_OFFSET;
		zcrtc->regs = &aux_crtc_regs;
		zcrtc->bits = &aux_crtc_bits;
	}

	zcrtc->pixclk = FUNC3(dev, (chn_type == VOU_CHN_MAIN) ?
					  "main_wclk" : "aux_wclk");
	if (FUNC1(zcrtc->pixclk)) {
		ret = FUNC2(zcrtc->pixclk);
		FUNC0(dev, "failed to get pix clk: %d\n", ret);
		return ret;
	}

	ret = FUNC7(drm, zplane, DRM_PLANE_TYPE_PRIMARY);
	if (ret) {
		FUNC0(dev, "failed to init primary plane: %d\n", ret);
		return ret;
	}

	zcrtc->primary = &zplane->plane;

	ret = FUNC6(drm, &zcrtc->crtc, zcrtc->primary, NULL,
					&zx_crtc_funcs, NULL);
	if (ret) {
		FUNC0(dev, "failed to init drm crtc: %d\n", ret);
		return ret;
	}

	FUNC5(&zcrtc->crtc, &zx_crtc_helper_funcs);

	if (chn_type == VOU_CHN_MAIN)
		vou->main_crtc = zcrtc;
	else
		vou->aux_crtc = zcrtc;

	return 0;
}