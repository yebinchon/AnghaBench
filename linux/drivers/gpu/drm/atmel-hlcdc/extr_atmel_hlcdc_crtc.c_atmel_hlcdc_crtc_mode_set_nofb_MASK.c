#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct videomode {int vfront_porch; int vback_porch; int vsync_len; int hfront_porch; int hback_porch; int hsync_len; } ;
struct regmap {int dummy; } ;
struct drm_display_mode {int crtc_vsync_start; int crtc_vdisplay; int crtc_vtotal; int crtc_vsync_end; int crtc_hsync_start; int crtc_hdisplay; int crtc_htotal; int crtc_hsync_end; int crtc_clock; int flags; } ;
struct drm_crtc {TYPE_4__* state; } ;
struct atmel_hlcdc_crtc_state {int output_mode; } ;
struct atmel_hlcdc_crtc {TYPE_3__* dc; } ;
struct TYPE_8__ {struct drm_display_mode adjusted_mode; } ;
struct TYPE_7__ {TYPE_2__* hlcdc; TYPE_1__* desc; } ;
struct TYPE_6__ {int /*<<< orphan*/  sys_clk; struct regmap* regmap; } ;
struct TYPE_5__ {int /*<<< orphan*/  fixed_clksrc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 int ATMEL_HLCDC_CLKDIV_MASK ; 
 int ATMEL_HLCDC_CLKPOL ; 
 unsigned int ATMEL_HLCDC_CLKSEL ; 
 unsigned int ATMEL_HLCDC_DISPDLY ; 
 unsigned int ATMEL_HLCDC_DISPPOL ; 
 unsigned int ATMEL_HLCDC_GUARDTIME_MASK ; 
 unsigned int ATMEL_HLCDC_HSPOL ; 
 unsigned int ATMEL_HLCDC_MODE_MASK ; 
 unsigned int ATMEL_HLCDC_VSPDLYE ; 
 unsigned int ATMEL_HLCDC_VSPDLYS ; 
 unsigned int ATMEL_HLCDC_VSPHO ; 
 unsigned int ATMEL_HLCDC_VSPOL ; 
 unsigned int ATMEL_HLCDC_VSPSU ; 
 int FUNC2 (unsigned long,unsigned long) ; 
 int DRM_MODE_FLAG_NHSYNC ; 
 int DRM_MODE_FLAG_NVSYNC ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct atmel_hlcdc_crtc_state* FUNC4 (TYPE_4__*) ; 
 struct atmel_hlcdc_crtc* FUNC5 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC6 (struct regmap*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct regmap*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct drm_crtc *c)
{
	struct atmel_hlcdc_crtc *crtc = FUNC5(c);
	struct regmap *regmap = crtc->dc->hlcdc->regmap;
	struct drm_display_mode *adj = &c->state->adjusted_mode;
	struct atmel_hlcdc_crtc_state *state;
	unsigned long mode_rate;
	struct videomode vm;
	unsigned long prate;
	unsigned int mask = ATMEL_HLCDC_CLKDIV_MASK | ATMEL_HLCDC_CLKPOL;
	unsigned int cfg = 0;
	int div;

	vm.vfront_porch = adj->crtc_vsync_start - adj->crtc_vdisplay;
	vm.vback_porch = adj->crtc_vtotal - adj->crtc_vsync_end;
	vm.vsync_len = adj->crtc_vsync_end - adj->crtc_vsync_start;
	vm.hfront_porch = adj->crtc_hsync_start - adj->crtc_hdisplay;
	vm.hback_porch = adj->crtc_htotal - adj->crtc_hsync_end;
	vm.hsync_len = adj->crtc_hsync_end - adj->crtc_hsync_start;

	FUNC7(regmap, FUNC0(1),
		     (vm.hsync_len - 1) | ((vm.vsync_len - 1) << 16));

	FUNC7(regmap, FUNC0(2),
		     (vm.vfront_porch - 1) | (vm.vback_porch << 16));

	FUNC7(regmap, FUNC0(3),
		     (vm.hfront_porch - 1) | ((vm.hback_porch - 1) << 16));

	FUNC7(regmap, FUNC0(4),
		     (adj->crtc_hdisplay - 1) |
		     ((adj->crtc_vdisplay - 1) << 16));

	if (!crtc->dc->desc->fixed_clksrc) {
		cfg |= ATMEL_HLCDC_CLKSEL;
		mask |= ATMEL_HLCDC_CLKSEL;
	}

	prate = 2 * FUNC3(crtc->dc->hlcdc->sys_clk);
	mode_rate = adj->crtc_clock * 1000;

	div = FUNC2(prate, mode_rate);
	if (div < 2) {
		div = 2;
	} else if (FUNC1(div) & ~ATMEL_HLCDC_CLKDIV_MASK) {
		/* The divider ended up too big, try a lower base rate. */
		cfg &= ~ATMEL_HLCDC_CLKSEL;
		prate /= 2;
		div = FUNC2(prate, mode_rate);
		if (FUNC1(div) & ~ATMEL_HLCDC_CLKDIV_MASK)
			div = ATMEL_HLCDC_CLKDIV_MASK;
	} else {
		int div_low = prate / mode_rate;

		if (div_low >= 2 &&
		    ((prate / div_low - mode_rate) <
		     10 * (mode_rate - prate / div)))
			/*
			 * At least 10 times better when using a higher
			 * frequency than requested, instead of a lower.
			 * So, go with that.
			 */
			div = div_low;
	}

	cfg |= FUNC1(div);

	FUNC6(regmap, FUNC0(0), mask, cfg);

	state = FUNC4(c->state);
	cfg = state->output_mode << 8;

	if (adj->flags & DRM_MODE_FLAG_NVSYNC)
		cfg |= ATMEL_HLCDC_VSPOL;

	if (adj->flags & DRM_MODE_FLAG_NHSYNC)
		cfg |= ATMEL_HLCDC_HSPOL;

	FUNC6(regmap, FUNC0(5),
			   ATMEL_HLCDC_HSPOL | ATMEL_HLCDC_VSPOL |
			   ATMEL_HLCDC_VSPDLYS | ATMEL_HLCDC_VSPDLYE |
			   ATMEL_HLCDC_DISPPOL | ATMEL_HLCDC_DISPDLY |
			   ATMEL_HLCDC_VSPSU | ATMEL_HLCDC_VSPHO |
			   ATMEL_HLCDC_GUARDTIME_MASK | ATMEL_HLCDC_MODE_MASK,
			   cfg);
}