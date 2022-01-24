#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct atmel_hlcdc_plane_state {int crtc_w; int src_w; int crtc_h; int src_h; } ;
struct TYPE_6__ {struct atmel_hlcdc_layer_desc* desc; } ;
struct atmel_hlcdc_plane {TYPE_3__ layer; } ;
struct TYPE_4__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_5__ {int /*<<< orphan*/  scaler_config; TYPE_1__ phicoeffs; } ;
struct atmel_hlcdc_layer_desc {TYPE_2__ layout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ATMEL_HLCDC_LAYER_SCALER_ENABLE ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  ATMEL_HLCDC_XPHIDEF ; 
 int /*<<< orphan*/  ATMEL_HLCDC_YPHIDEF ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct atmel_hlcdc_plane*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  heo_downscaling_xcoef ; 
 int /*<<< orphan*/  heo_downscaling_ycoef ; 
 int /*<<< orphan*/  heo_upscaling_xcoef ; 
 int /*<<< orphan*/  heo_upscaling_ycoef ; 

void FUNC5(struct atmel_hlcdc_plane *plane,
				    struct atmel_hlcdc_plane_state *state)
{
	const struct atmel_hlcdc_layer_desc *desc = plane->layer.desc;
	u32 xfactor, yfactor;

	if (!desc->layout.scaler_config)
		return;

	if (state->crtc_w == state->src_w && state->crtc_h == state->src_h) {
		FUNC2(&plane->layer,
					    desc->layout.scaler_config, 0);
		return;
	}

	if (desc->layout.phicoeffs.x) {
		xfactor = FUNC3(state->src_w,
							state->crtc_w,
							ATMEL_HLCDC_XPHIDEF);

		yfactor = FUNC3(state->src_h,
							state->crtc_h,
							ATMEL_HLCDC_YPHIDEF);

		FUNC4(plane,
				state->crtc_w < state->src_w ?
				heo_downscaling_xcoef :
				heo_upscaling_xcoef,
				FUNC0(heo_upscaling_xcoef),
				desc->layout.phicoeffs.x);

		FUNC4(plane,
				state->crtc_h < state->src_h ?
				heo_downscaling_ycoef :
				heo_upscaling_ycoef,
				FUNC0(heo_upscaling_ycoef),
				desc->layout.phicoeffs.y);
	} else {
		xfactor = (1024 * state->src_w) / state->crtc_w;
		yfactor = (1024 * state->src_h) / state->crtc_h;
	}

	FUNC2(&plane->layer, desc->layout.scaler_config,
				    ATMEL_HLCDC_LAYER_SCALER_ENABLE |
				    FUNC1(xfactor,
								     yfactor));
}