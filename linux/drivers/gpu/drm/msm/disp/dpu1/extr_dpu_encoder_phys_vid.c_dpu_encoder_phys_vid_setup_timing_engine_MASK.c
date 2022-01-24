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
typedef  int /*<<< orphan*/  u32 ;
struct intf_timing_params {int /*<<< orphan*/  member_0; } ;
struct drm_display_mode {int hdisplay; int htotal; int hsync_start; int hsync_end; } ;
struct dpu_hw_intf_cfg {int /*<<< orphan*/  mode_3d; scalar_t__ stream_sel; int /*<<< orphan*/  intf_mode_sel; int /*<<< orphan*/  intf; int /*<<< orphan*/  member_0; } ;
struct dpu_format {int dummy; } ;
struct dpu_encoder_phys {scalar_t__ split_role; int /*<<< orphan*/  enc_spinlock; TYPE_3__* hw_ctl; TYPE_4__* hw_intf; struct drm_display_mode cached_mode; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* setup_timing_gen ) (TYPE_4__*,struct intf_timing_params*,struct dpu_format const*) ;} ;
struct TYPE_8__ {TYPE_1__ ops; int /*<<< orphan*/  idx; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* setup_intf_cfg ) (TYPE_3__*,struct dpu_hw_intf_cfg*) ;} ;
struct TYPE_7__ {TYPE_2__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPU_CTL_MODE_SEL_VID ; 
 int /*<<< orphan*/  FUNC0 (struct dpu_encoder_phys*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  DRM_FORMAT_RGB888 ; 
 scalar_t__ ENC_ROLE_SOLO ; 
 int /*<<< orphan*/  FUNC2 (struct dpu_encoder_phys*) ; 
 struct dpu_format* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC5 (struct dpu_encoder_phys*,struct drm_display_mode*,struct intf_timing_params*) ; 
 int /*<<< orphan*/  FUNC6 (struct dpu_encoder_phys*,struct intf_timing_params*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,struct intf_timing_params*,struct dpu_format const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,struct dpu_hw_intf_cfg*) ; 

__attribute__((used)) static void FUNC11(
		struct dpu_encoder_phys *phys_enc)
{
	struct drm_display_mode mode;
	struct intf_timing_params timing_params = { 0 };
	const struct dpu_format *fmt = NULL;
	u32 fmt_fourcc = DRM_FORMAT_RGB888;
	unsigned long lock_flags;
	struct dpu_hw_intf_cfg intf_cfg = { 0 };

	if (!phys_enc || !phys_enc->hw_ctl->ops.setup_intf_cfg) {
		FUNC1("invalid encoder %d\n", phys_enc != 0);
		return;
	}

	mode = phys_enc->cached_mode;
	if (!phys_enc->hw_intf->ops.setup_timing_gen) {
		FUNC1("timing engine setup is not supported\n");
		return;
	}

	FUNC0(phys_enc, "enabling mode:\n");
	FUNC4(&mode);

	if (phys_enc->split_role != ENC_ROLE_SOLO) {
		mode.hdisplay >>= 1;
		mode.htotal >>= 1;
		mode.hsync_start >>= 1;
		mode.hsync_end >>= 1;

		FUNC0(phys_enc,
			"split_role %d, halve horizontal %d %d %d %d\n",
			phys_enc->split_role,
			mode.hdisplay, mode.htotal,
			mode.hsync_start, mode.hsync_end);
	}

	FUNC5(phys_enc, &mode, &timing_params);

	fmt = FUNC3(fmt_fourcc);
	FUNC0(phys_enc, "fmt_fourcc 0x%X\n", fmt_fourcc);

	intf_cfg.intf = phys_enc->hw_intf->idx;
	intf_cfg.intf_mode_sel = DPU_CTL_MODE_SEL_VID;
	intf_cfg.stream_sel = 0; /* Don't care value for video mode */
	intf_cfg.mode_3d = FUNC2(phys_enc);

	FUNC7(phys_enc->enc_spinlock, lock_flags);
	phys_enc->hw_intf->ops.setup_timing_gen(phys_enc->hw_intf,
			&timing_params, fmt);
	phys_enc->hw_ctl->ops.setup_intf_cfg(phys_enc->hw_ctl, &intf_cfg);
	FUNC8(phys_enc->enc_spinlock, lock_flags);

	FUNC6(phys_enc, &timing_params);
}