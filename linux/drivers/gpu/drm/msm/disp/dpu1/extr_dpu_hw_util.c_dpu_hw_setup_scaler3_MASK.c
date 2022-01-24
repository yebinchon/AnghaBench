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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ enable; } ;
struct dpu_hw_scaler3_cfg {int y_rgb_filter_cfg; int uv_filter_cfg; int blend_cfg; int* preload_x; int* preload_y; int* src_width; int* src_height; int dst_width; int dst_height; int* init_phase_x; int* init_phase_y; int* phase_step_x; int* phase_step_y; int alpha_filter_cfg; scalar_t__ lut_flag; TYPE_1__ de; scalar_t__ dir_en; int /*<<< orphan*/  enable; } ;
struct dpu_hw_blk_reg_map {int dummy; } ;
struct dpu_format {scalar_t__ alpha_enable; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dpu_format const*) ; 
 scalar_t__ FUNC2 (struct dpu_format const*) ; 
 int /*<<< orphan*/  FUNC3 (struct dpu_hw_blk_reg_map*,int,int) ; 
 int QSEED3_DST_SIZE ; 
 int QSEED3_OP_MODE ; 
 int QSEED3_PHASE_INIT ; 
 int QSEED3_PHASE_INIT_UV_H ; 
 int QSEED3_PHASE_INIT_UV_V ; 
 int QSEED3_PHASE_INIT_Y_H ; 
 int QSEED3_PHASE_INIT_Y_V ; 
 int QSEED3_PHASE_STEP_UV_H ; 
 int QSEED3_PHASE_STEP_UV_V ; 
 int QSEED3_PHASE_STEP_Y_H ; 
 int QSEED3_PHASE_STEP_Y_V ; 
 int QSEED3_PRELOAD ; 
 int QSEED3_SRC_SIZE_UV ; 
 int QSEED3_SRC_SIZE_Y_RGB_A ; 
 int /*<<< orphan*/  FUNC4 (struct dpu_hw_blk_reg_map*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dpu_hw_blk_reg_map*,struct dpu_hw_scaler3_cfg*,int) ; 

void FUNC6(struct dpu_hw_blk_reg_map *c,
		struct dpu_hw_scaler3_cfg *scaler3_cfg,
		u32 scaler_offset, u32 scaler_version,
		const struct dpu_format *format)
{
	u32 op_mode = 0;
	u32 phase_init, preload, src_y_rgb, src_uv, dst;

	if (!scaler3_cfg->enable)
		goto end;

	op_mode |= FUNC0(0);
	op_mode |= (scaler3_cfg->y_rgb_filter_cfg & 0x3) << 16;

	if (format && FUNC2(format)) {
		op_mode |= FUNC0(12);
		op_mode |= (scaler3_cfg->uv_filter_cfg & 0x3) << 24;
	}

	op_mode |= (scaler3_cfg->blend_cfg & 1) << 31;
	op_mode |= (scaler3_cfg->dir_en) ? FUNC0(4) : 0;

	preload =
		((scaler3_cfg->preload_x[0] & 0x7F) << 0) |
		((scaler3_cfg->preload_y[0] & 0x7F) << 8) |
		((scaler3_cfg->preload_x[1] & 0x7F) << 16) |
		((scaler3_cfg->preload_y[1] & 0x7F) << 24);

	src_y_rgb = (scaler3_cfg->src_width[0] & 0x1FFFF) |
		((scaler3_cfg->src_height[0] & 0x1FFFF) << 16);

	src_uv = (scaler3_cfg->src_width[1] & 0x1FFFF) |
		((scaler3_cfg->src_height[1] & 0x1FFFF) << 16);

	dst = (scaler3_cfg->dst_width & 0x1FFFF) |
		((scaler3_cfg->dst_height & 0x1FFFF) << 16);

	if (scaler3_cfg->de.enable) {
		FUNC4(c, &scaler3_cfg->de, scaler_offset);
		op_mode |= FUNC0(8);
	}

	if (scaler3_cfg->lut_flag)
		FUNC5(c, scaler3_cfg,
								scaler_offset);

	if (scaler_version == 0x1002) {
		phase_init =
			((scaler3_cfg->init_phase_x[0] & 0x3F) << 0) |
			((scaler3_cfg->init_phase_y[0] & 0x3F) << 8) |
			((scaler3_cfg->init_phase_x[1] & 0x3F) << 16) |
			((scaler3_cfg->init_phase_y[1] & 0x3F) << 24);
		FUNC3(c, QSEED3_PHASE_INIT + scaler_offset, phase_init);
	} else {
		FUNC3(c, QSEED3_PHASE_INIT_Y_H + scaler_offset,
			scaler3_cfg->init_phase_x[0] & 0x1FFFFF);
		FUNC3(c, QSEED3_PHASE_INIT_Y_V + scaler_offset,
			scaler3_cfg->init_phase_y[0] & 0x1FFFFF);
		FUNC3(c, QSEED3_PHASE_INIT_UV_H + scaler_offset,
			scaler3_cfg->init_phase_x[1] & 0x1FFFFF);
		FUNC3(c, QSEED3_PHASE_INIT_UV_V + scaler_offset,
			scaler3_cfg->init_phase_y[1] & 0x1FFFFF);
	}

	FUNC3(c, QSEED3_PHASE_STEP_Y_H + scaler_offset,
		scaler3_cfg->phase_step_x[0] & 0xFFFFFF);

	FUNC3(c, QSEED3_PHASE_STEP_Y_V + scaler_offset,
		scaler3_cfg->phase_step_y[0] & 0xFFFFFF);

	FUNC3(c, QSEED3_PHASE_STEP_UV_H + scaler_offset,
		scaler3_cfg->phase_step_x[1] & 0xFFFFFF);

	FUNC3(c, QSEED3_PHASE_STEP_UV_V + scaler_offset,
		scaler3_cfg->phase_step_y[1] & 0xFFFFFF);

	FUNC3(c, QSEED3_PRELOAD + scaler_offset, preload);

	FUNC3(c, QSEED3_SRC_SIZE_Y_RGB_A + scaler_offset, src_y_rgb);

	FUNC3(c, QSEED3_SRC_SIZE_UV + scaler_offset, src_uv);

	FUNC3(c, QSEED3_DST_SIZE + scaler_offset, dst);

end:
	if (format && !FUNC1(format))
		op_mode |= FUNC0(14);

	if (format && format->alpha_enable) {
		op_mode |= FUNC0(10);
		if (scaler_version == 0x1002)
			op_mode |= (scaler3_cfg->alpha_filter_cfg & 0x1) << 30;
		else
			op_mode |= (scaler3_cfg->alpha_filter_cfg & 0x3) << 29;
	}

	FUNC3(c, QSEED3_OP_MODE + scaler_offset, op_mode);
}