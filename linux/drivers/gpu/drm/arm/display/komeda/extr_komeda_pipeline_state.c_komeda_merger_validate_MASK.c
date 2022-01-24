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
struct komeda_merger_state {int /*<<< orphan*/  vsize_merged; int /*<<< orphan*/  hsize_merged; } ;
struct komeda_merger {int /*<<< orphan*/  base; int /*<<< orphan*/  vsize_merged; int /*<<< orphan*/  hsize_merged; } ;
struct komeda_data_flow_cfg {int /*<<< orphan*/  input; int /*<<< orphan*/  out_h; int /*<<< orphan*/  out_w; } ;
struct TYPE_2__ {int /*<<< orphan*/  crtc; int /*<<< orphan*/  state; } ;
struct komeda_crtc_state {TYPE_1__ base; } ;
struct komeda_component_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct komeda_component_state*) ; 
 int FUNC2 (struct komeda_component_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct komeda_component_state*,int /*<<< orphan*/ *,int) ; 
 struct komeda_component_state* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct komeda_merger_state* FUNC7 (struct komeda_component_state*) ; 

__attribute__((used)) static int
FUNC8(struct komeda_merger *merger,
		       void *user,
		       struct komeda_crtc_state *kcrtc_st,
		       struct komeda_data_flow_cfg *left_input,
		       struct komeda_data_flow_cfg *right_input,
		       struct komeda_data_flow_cfg *output)
{
	struct komeda_component_state *c_st;
	struct komeda_merger_state *st;
	int err = 0;

	if (!merger) {
		FUNC0("No merger is available");
		return -EINVAL;
	}

	if (!FUNC3(&merger->hsize_merged, output->out_w)) {
		FUNC0("merged_w: %d is out of the accepted range.\n",
				 output->out_w);
		return -EINVAL;
	}

	if (!FUNC3(&merger->vsize_merged, output->out_h)) {
		FUNC0("merged_h: %d is out of the accepted range.\n",
				 output->out_h);
		return -EINVAL;
	}

	c_st = FUNC5(&merger->base,
			kcrtc_st->base.state, kcrtc_st->base.crtc, kcrtc_st->base.crtc);

	if (FUNC1(c_st))
		return FUNC2(c_st);

	st = FUNC7(c_st);
	st->hsize_merged = output->out_w;
	st->vsize_merged = output->out_h;

	FUNC4(c_st, &left_input->input, 0);
	FUNC4(c_st, &right_input->input, 1);
	FUNC6(&output->input, &merger->base, 0);

	return err;
}