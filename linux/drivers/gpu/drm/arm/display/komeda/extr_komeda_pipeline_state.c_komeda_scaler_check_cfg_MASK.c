#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_8__ {struct komeda_pipeline* pipeline; } ;
struct komeda_scaler {scalar_t__ max_upscaling; TYPE_3__ base; int /*<<< orphan*/  max_downscaling; int /*<<< orphan*/  vsize; int /*<<< orphan*/  hsize; } ;
struct komeda_pipeline {TYPE_4__* funcs; } ;
struct TYPE_7__ {TYPE_1__* component; } ;
struct komeda_data_flow_cfg {scalar_t__ in_w; scalar_t__ in_h; scalar_t__ out_w; scalar_t__ out_h; TYPE_2__ input; } ;
struct TYPE_10__ {int /*<<< orphan*/  adjusted_mode; } ;
struct komeda_crtc_state {TYPE_5__ base; } ;
struct TYPE_9__ {int (* downscaling_clk_check ) (struct komeda_pipeline*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct komeda_data_flow_cfg*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  KOMEDA_PIPELINE_COMPIZS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct komeda_crtc_state*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct komeda_pipeline*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct komeda_data_flow_cfg*) ; 

__attribute__((used)) static int
FUNC6(struct komeda_scaler *scaler,
			struct komeda_crtc_state *kcrtc_st,
			struct komeda_data_flow_cfg *dflow)
{
	u32 hsize_in, vsize_in, hsize_out, vsize_out;
	u32 max_upscaling;

	hsize_in = dflow->in_w;
	vsize_in = dflow->in_h;
	hsize_out = dflow->out_w;
	vsize_out = dflow->out_h;

	if (!FUNC2(&scaler->hsize, hsize_in) ||
	    !FUNC2(&scaler->hsize, hsize_out)) {
		FUNC0("Invalid horizontal sizes");
		return -EINVAL;
	}

	if (!FUNC2(&scaler->vsize, vsize_in) ||
	    !FUNC2(&scaler->vsize, vsize_out)) {
		FUNC0("Invalid vertical sizes");
		return -EINVAL;
	}

	/* If input comes from compiz that means the scaling is for writeback
	 * and scaler can not do upscaling for writeback
	 */
	if (FUNC1(dflow->input.component->id, KOMEDA_PIPELINE_COMPIZS))
		max_upscaling = 1;
	else
		max_upscaling = scaler->max_upscaling;

	if (!FUNC4(hsize_in, hsize_out, max_upscaling,
				 scaler->max_downscaling)) {
		FUNC0("Invalid horizontal scaling ratio");
		return -EINVAL;
	}

	if (!FUNC4(vsize_in, vsize_out, max_upscaling,
				 scaler->max_downscaling)) {
		FUNC0("Invalid vertical scaling ratio");
		return -EINVAL;
	}

	if (hsize_in > hsize_out || vsize_in > vsize_out) {
		struct komeda_pipeline *pipe = scaler->base.pipeline;
		int err;

		err = pipe->funcs->downscaling_clk_check(pipe,
					&kcrtc_st->base.adjusted_mode,
					FUNC3(kcrtc_st), dflow);
		if (err) {
			FUNC0("aclk can't satisfy the clock requirement of the downscaling\n");
			return err;
		}
	}

	return 0;
}