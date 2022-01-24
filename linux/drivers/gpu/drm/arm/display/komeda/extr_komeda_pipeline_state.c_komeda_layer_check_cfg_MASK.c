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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ id; } ;
struct komeda_layer {int /*<<< orphan*/  vsize_in; int /*<<< orphan*/  hsize_in; TYPE_1__ base; int /*<<< orphan*/  layer_type; } ;
struct komeda_fb {int dummy; } ;
struct komeda_data_flow_cfg {int /*<<< orphan*/  in_h; int /*<<< orphan*/  in_w; int /*<<< orphan*/  in_y; int /*<<< orphan*/  in_x; int /*<<< orphan*/  out_h; int /*<<< orphan*/  out_w; int /*<<< orphan*/  out_y; int /*<<< orphan*/  out_x; int /*<<< orphan*/  rot; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ KOMEDA_COMPONENT_WB_LAYER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct komeda_fb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct komeda_fb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct komeda_layer *layer,
		       struct komeda_fb *kfb,
		       struct komeda_data_flow_cfg *dflow)
{
	u32 src_x, src_y, src_w, src_h;

	if (!FUNC3(kfb, layer->layer_type, dflow->rot))
		return -EINVAL;

	if (layer->base.id == KOMEDA_COMPONENT_WB_LAYER) {
		src_x = dflow->out_x;
		src_y = dflow->out_y;
		src_w = dflow->out_w;
		src_h = dflow->out_h;
	} else {
		src_x = dflow->in_x;
		src_y = dflow->in_y;
		src_w = dflow->in_w;
		src_h = dflow->in_h;
	}

	if (FUNC2(kfb, src_x, src_y, src_w, src_h))
		return -EINVAL;

	if (!FUNC1(&layer->hsize_in, src_w)) {
		FUNC0("invalidate src_w %d.\n", src_w);
		return -EINVAL;
	}

	if (!FUNC1(&layer->vsize_in, src_h)) {
		FUNC0("invalidate src_h %d.\n", src_h);
		return -EINVAL;
	}

	return 0;
}