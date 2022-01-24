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
struct TYPE_3__ {int vi_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int SUN8I_UI_SCALER_COEFF_COUNT ; 
 int SUN8I_UI_SCALER_PHASE_FRAC ; 
 int SUN8I_UI_SCALER_SCALE_FRAC ; 
 int FUNC7 (int,int) ; 
 scalar_t__ FUNC8 (int) ; 
 int* lan2coefftab16 ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct sun8i_mixer*,int) ; 
 int FUNC11 (int) ; 

void FUNC12(struct sun8i_mixer *mixer, int layer,
			   u32 src_w, u32 src_h, u32 dst_w, u32 dst_h,
			   u32 hscale, u32 vscale, u32 hphase, u32 vphase)
{
	u32 insize, outsize;
	int i, offset;
	u32 base;

	if (FUNC8(layer < mixer->cfg->vi_num))
		return;

	base = FUNC10(mixer, layer);

	hphase <<= SUN8I_UI_SCALER_PHASE_FRAC - 16;
	vphase <<= SUN8I_UI_SCALER_PHASE_FRAC - 16;
	hscale <<= SUN8I_UI_SCALER_SCALE_FRAC - 16;
	vscale <<= SUN8I_UI_SCALER_SCALE_FRAC - 16;

	insize = FUNC7(src_w, src_h);
	outsize = FUNC7(dst_w, dst_h);

	FUNC9(mixer->engine.regs,
		     FUNC4(base), outsize);
	FUNC9(mixer->engine.regs,
		     FUNC3(base), insize);
	FUNC9(mixer->engine.regs,
		     FUNC2(base), hscale);
	FUNC9(mixer->engine.regs,
		     FUNC6(base), vscale);
	FUNC9(mixer->engine.regs,
		     FUNC1(base), hphase);
	FUNC9(mixer->engine.regs,
		     FUNC5(base), vphase);
	offset = FUNC11(hscale) *
			SUN8I_UI_SCALER_COEFF_COUNT;
	for (i = 0; i < SUN8I_UI_SCALER_COEFF_COUNT; i++)
		FUNC9(mixer->engine.regs,
			     FUNC0(base, i),
			     lan2coefftab16[offset + i]);
}