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
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  regs; } ;
struct sun8i_mixer {TYPE_2__ engine; TYPE_1__* cfg; } ;
struct drm_format_info {int hsub; int vsub; } ;
struct TYPE_3__ {scalar_t__ is_de3; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SUN50I_SCALER_VSU_SCALE_MODE_NORMAL ; 
 int SUN50I_SCALER_VSU_SCALE_MODE_UI ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int SUN8I_VI_SCALER_PHASE_FRAC ; 
 int SUN8I_VI_SCALER_SCALE_FRAC ; 
 int FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct sun8i_mixer*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int,int,struct drm_format_info const*) ; 

void FUNC16(struct sun8i_mixer *mixer, int layer,
			   u32 src_w, u32 src_h, u32 dst_w, u32 dst_h,
			   u32 hscale, u32 vscale, u32 hphase, u32 vphase,
			   const struct drm_format_info *format)
{
	u32 chphase, cvphase;
	u32 insize, outsize;
	u32 base;

	base = FUNC14(mixer, layer);

	hphase <<= SUN8I_VI_SCALER_PHASE_FRAC - 16;
	vphase <<= SUN8I_VI_SCALER_PHASE_FRAC - 16;
	hscale <<= SUN8I_VI_SCALER_SCALE_FRAC - 16;
	vscale <<= SUN8I_VI_SCALER_SCALE_FRAC - 16;

	insize = FUNC12(src_w, src_h);
	outsize = FUNC12(dst_w, dst_h);

	/*
	 * This is chroma V/H phase calculation as it appears in
	 * BSP driver. There is no detailed explanation. YUV 420
	 * chroma is threated specialy for some reason.
	 */
	if (format->hsub == 2 && format->vsub == 2) {
		chphase = hphase >> 1;
		cvphase = (vphase >> 1) -
			(1UL << (SUN8I_VI_SCALER_SCALE_FRAC - 2));
	} else {
		chphase = hphase;
		cvphase = vphase;
	}

	if (mixer->cfg->is_de3) {
		u32 val;

		if (format->hsub == 1 && format->vsub == 1)
			val = SUN50I_SCALER_VSU_SCALE_MODE_UI;
		else
			val = SUN50I_SCALER_VSU_SCALE_MODE_NORMAL;

		FUNC13(mixer->engine.regs,
			     FUNC0(base), val);
	}

	FUNC13(mixer->engine.regs,
		     FUNC6(base), outsize);
	FUNC13(mixer->engine.regs,
		     FUNC9(base), insize);
	FUNC13(mixer->engine.regs,
		     FUNC8(base), hscale);
	FUNC13(mixer->engine.regs,
		     FUNC11(base), vscale);
	FUNC13(mixer->engine.regs,
		     FUNC7(base), hphase);
	FUNC13(mixer->engine.regs,
		     FUNC10(base), vphase);
	FUNC13(mixer->engine.regs,
		     FUNC3(base),
		     FUNC12(src_w / format->hsub,
					  src_h / format->vsub));
	FUNC13(mixer->engine.regs,
		     FUNC2(base),
		     hscale / format->hsub);
	FUNC13(mixer->engine.regs,
		     FUNC5(base),
		     vscale / format->vsub);
	FUNC13(mixer->engine.regs,
		     FUNC1(base), chphase);
	FUNC13(mixer->engine.regs,
		     FUNC4(base), cvphase);
	FUNC15(mixer->engine.regs, base,
				  hscale, vscale, format);
}