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
struct psb_offset {scalar_t__ palette; scalar_t__ base; scalar_t__ pos; scalar_t__ size; scalar_t__ stride; scalar_t__ vsync; scalar_t__ vblank; scalar_t__ vtotal; scalar_t__ hsync; scalar_t__ hblank; scalar_t__ htotal; scalar_t__ dpll; scalar_t__ fp1; scalar_t__ fp0; scalar_t__ src; scalar_t__ conf; scalar_t__ cntr; } ;
struct psb_intel_crtc_state {void** savePalette; void* saveDSPBASE; void* saveDSPPOS; void* saveDSPSIZE; void* saveDSPSTRIDE; void* saveVSYNC; void* saveVBLANK; void* saveVTOTAL; void* saveHSYNC; void* saveHBLANK; void* saveHTOTAL; void* saveDPLL; void* saveFP1; void* saveFP0; void* savePIPESRC; void* savePIPECONF; void* saveDSPCNTR; } ;
struct gma_crtc {size_t pipe; struct psb_intel_crtc_state* crtc_state; } ;
struct drm_psb_private {struct psb_offset* regmap; } ;
struct drm_device {int /*<<< orphan*/  dev; struct drm_psb_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct gma_crtc* FUNC2 (struct drm_crtc*) ; 

void FUNC3(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct drm_psb_private *dev_priv = dev->dev_private;
	struct gma_crtc *gma_crtc = FUNC2(crtc);
	struct psb_intel_crtc_state *crtc_state = gma_crtc->crtc_state;
	const struct psb_offset *map = &dev_priv->regmap[gma_crtc->pipe];
	uint32_t palette_reg;
	int i;

	if (!crtc_state) {
		FUNC1(dev->dev, "No CRTC state found\n");
		return;
	}

	crtc_state->saveDSPCNTR = FUNC0(map->cntr);
	crtc_state->savePIPECONF = FUNC0(map->conf);
	crtc_state->savePIPESRC = FUNC0(map->src);
	crtc_state->saveFP0 = FUNC0(map->fp0);
	crtc_state->saveFP1 = FUNC0(map->fp1);
	crtc_state->saveDPLL = FUNC0(map->dpll);
	crtc_state->saveHTOTAL = FUNC0(map->htotal);
	crtc_state->saveHBLANK = FUNC0(map->hblank);
	crtc_state->saveHSYNC = FUNC0(map->hsync);
	crtc_state->saveVTOTAL = FUNC0(map->vtotal);
	crtc_state->saveVBLANK = FUNC0(map->vblank);
	crtc_state->saveVSYNC = FUNC0(map->vsync);
	crtc_state->saveDSPSTRIDE = FUNC0(map->stride);

	/* NOTE: DSPSIZE DSPPOS only for psb */
	crtc_state->saveDSPSIZE = FUNC0(map->size);
	crtc_state->saveDSPPOS = FUNC0(map->pos);

	crtc_state->saveDSPBASE = FUNC0(map->base);

	palette_reg = map->palette;
	for (i = 0; i < 256; ++i)
		crtc_state->savePalette[i] = FUNC0(palette_reg + (i << 2));
}