#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct komeda_splitter_state {int /*<<< orphan*/  base; int /*<<< orphan*/  overlap; int /*<<< orphan*/  vsize; int /*<<< orphan*/  hsize; } ;
struct TYPE_5__ {TYPE_1__* pipeline; } ;
struct komeda_splitter {TYPE_2__ base; int /*<<< orphan*/  vsize; int /*<<< orphan*/  hsize; } ;
struct komeda_data_flow_cfg {int /*<<< orphan*/  input; int /*<<< orphan*/  overlap; int /*<<< orphan*/  in_h; int /*<<< orphan*/  in_w; } ;
struct komeda_component_state {int dummy; } ;
struct drm_connector_state {int /*<<< orphan*/  crtc; int /*<<< orphan*/  connector; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/ * scalers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct komeda_component_state*) ; 
 int FUNC2 (struct komeda_component_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct komeda_component_state* FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct komeda_data_flow_cfg*,struct komeda_data_flow_cfg*,struct komeda_data_flow_cfg*) ; 
 struct komeda_splitter_state* FUNC8 (struct komeda_component_state*) ; 

__attribute__((used)) static int
FUNC9(struct komeda_splitter *splitter,
			 struct drm_connector_state *conn_st,
			 struct komeda_data_flow_cfg *dflow,
			 struct komeda_data_flow_cfg *l_output,
			 struct komeda_data_flow_cfg *r_output)
{
	struct komeda_component_state *c_st;
	struct komeda_splitter_state *st;

	if (!splitter) {
		FUNC0("Current HW doesn't support splitter.\n");
		return -EINVAL;
	}

	if (!FUNC3(&splitter->hsize, dflow->in_w)) {
		FUNC0("split in_w:%d is out of the acceptable range.\n",
				 dflow->in_w);
		return -EINVAL;
	}

	if (!FUNC3(&splitter->vsize, dflow->in_h)) {
		FUNC0("split in_h: %d exceeds the acceptable range.\n",
				 dflow->in_h);
		return -EINVAL;
	}

	c_st = FUNC5(&splitter->base,
			conn_st->state, conn_st->connector, conn_st->crtc);

	if (FUNC1(c_st))
		return FUNC2(c_st);

	FUNC7(splitter->base.pipeline->scalers[0],
			       dflow, l_output, r_output);

	st = FUNC8(c_st);
	st->hsize = dflow->in_w;
	st->vsize = dflow->in_h;
	st->overlap = dflow->overlap;

	FUNC4(&st->base, &dflow->input, 0);
	FUNC6(&l_output->input, &splitter->base, 0);
	FUNC6(&r_output->input, &splitter->base, 1);

	return 0;
}