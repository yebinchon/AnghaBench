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
typedef  scalar_t__ uint32_t ;
struct psb_offset {scalar_t__ palette; scalar_t__ base; scalar_t__ cntr; scalar_t__ conf; scalar_t__ src; scalar_t__ pos; scalar_t__ size; scalar_t__ stride; scalar_t__ vsync; scalar_t__ vblank; scalar_t__ vtotal; scalar_t__ hsync; scalar_t__ hblank; scalar_t__ htotal; scalar_t__ dpll; scalar_t__ fp1; scalar_t__ fp0; } ;
struct psb_intel_crtc_state {int saveDPLL; int saveFP0; int saveFP1; int saveHTOTAL; int saveHBLANK; int saveHSYNC; int saveVTOTAL; int saveVBLANK; int saveVSYNC; int saveDSPSTRIDE; int saveDSPSIZE; int saveDSPPOS; int savePIPESRC; int saveDSPBASE; int savePIPECONF; int saveDSPCNTR; int* savePalette; } ;
struct gma_crtc {size_t pipe; struct psb_intel_crtc_state* crtc_state; } ;
struct drm_psb_private {struct psb_offset* regmap; } ;
struct drm_device {int /*<<< orphan*/  dev; struct drm_psb_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 int DPLL_VCO_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 struct gma_crtc* FUNC4 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct drm_psb_private *dev_priv = dev->dev_private;
	struct gma_crtc *gma_crtc =  FUNC4(crtc);
	struct psb_intel_crtc_state *crtc_state = gma_crtc->crtc_state;
	const struct psb_offset *map = &dev_priv->regmap[gma_crtc->pipe];
	uint32_t palette_reg;
	int i;

	if (!crtc_state) {
		FUNC2(dev->dev, "No crtc state\n");
		return;
	}

	if (crtc_state->saveDPLL & DPLL_VCO_ENABLE) {
		FUNC1(map->dpll,
			crtc_state->saveDPLL & ~DPLL_VCO_ENABLE);
		FUNC0(map->dpll);
		FUNC5(150);
	}

	FUNC1(map->fp0, crtc_state->saveFP0);
	FUNC0(map->fp0);

	FUNC1(map->fp1, crtc_state->saveFP1);
	FUNC0(map->fp1);

	FUNC1(map->dpll, crtc_state->saveDPLL);
	FUNC0(map->dpll);
	FUNC5(150);

	FUNC1(map->htotal, crtc_state->saveHTOTAL);
	FUNC1(map->hblank, crtc_state->saveHBLANK);
	FUNC1(map->hsync, crtc_state->saveHSYNC);
	FUNC1(map->vtotal, crtc_state->saveVTOTAL);
	FUNC1(map->vblank, crtc_state->saveVBLANK);
	FUNC1(map->vsync, crtc_state->saveVSYNC);
	FUNC1(map->stride, crtc_state->saveDSPSTRIDE);

	FUNC1(map->size, crtc_state->saveDSPSIZE);
	FUNC1(map->pos, crtc_state->saveDSPPOS);

	FUNC1(map->src, crtc_state->savePIPESRC);
	FUNC1(map->base, crtc_state->saveDSPBASE);
	FUNC1(map->conf, crtc_state->savePIPECONF);

	FUNC3(dev);

	FUNC1(map->cntr, crtc_state->saveDSPCNTR);
	FUNC1(map->base, crtc_state->saveDSPBASE);

	FUNC3(dev);

	palette_reg = map->palette;
	for (i = 0; i < 256; ++i)
		FUNC1(palette_reg + (i << 2), crtc_state->savePalette[i]);
}