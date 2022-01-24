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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_8__ {int x; int width; int y; int height; } ;
struct scaler_data {int h_active; int v_active; TYPE_3__ recout; } ;
struct TYPE_9__ {TYPE_5__* ctx; } ;
struct dce_transform {TYPE_4__ base; } ;
struct TYPE_10__ {TYPE_2__* dc; } ;
struct TYPE_6__ {scalar_t__ visual_confirm; } ;
struct TYPE_7__ {TYPE_1__ debug; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EXT_OVERSCAN_BOTTOM ; 
 int /*<<< orphan*/  EXT_OVERSCAN_LEFT ; 
 int /*<<< orphan*/  EXT_OVERSCAN_LEFT_RIGHT ; 
 int /*<<< orphan*/  EXT_OVERSCAN_RIGHT ; 
 int /*<<< orphan*/  EXT_OVERSCAN_TOP ; 
 int /*<<< orphan*/  EXT_OVERSCAN_TOP_BOTTOM ; 
 scalar_t__ VISUAL_CONFIRM_DISABLE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmSCLV_EXT_OVERSCAN_LEFT_RIGHT ; 
 int /*<<< orphan*/  mmSCLV_EXT_OVERSCAN_TOP_BOTTOM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(
		struct dce_transform *xfm_dce,
		const struct scaler_data *data)
{
	uint32_t overscan_left_right = 0;
	uint32_t overscan_top_bottom = 0;

	int overscan_right = data->h_active - data->recout.x - data->recout.width;
	int overscan_bottom = data->v_active - data->recout.y - data->recout.height;

	if (xfm_dce->base.ctx->dc->debug.visual_confirm != VISUAL_CONFIRM_DISABLE) {
		overscan_bottom += 2;
		overscan_right += 2;
	}

	if (overscan_right < 0) {
		FUNC0();
		overscan_right = 0;
	}
	if (overscan_bottom < 0) {
		FUNC0();
		overscan_bottom = 0;
	}

	FUNC2(overscan_left_right, data->recout.x,
			EXT_OVERSCAN_LEFT_RIGHT, EXT_OVERSCAN_LEFT);

	FUNC2(overscan_left_right, overscan_right,
			EXT_OVERSCAN_LEFT_RIGHT, EXT_OVERSCAN_RIGHT);

	FUNC2(overscan_top_bottom, data->recout.y,
			EXT_OVERSCAN_TOP_BOTTOM, EXT_OVERSCAN_TOP);

	FUNC2(overscan_top_bottom, overscan_bottom,
			EXT_OVERSCAN_TOP_BOTTOM, EXT_OVERSCAN_BOTTOM);

	FUNC1(xfm_dce->base.ctx,
			mmSCLV_EXT_OVERSCAN_LEFT_RIGHT,
			overscan_left_right);

	FUNC1(xfm_dce->base.ctx,
			mmSCLV_EXT_OVERSCAN_TOP_BOTTOM,
			overscan_top_bottom);
}