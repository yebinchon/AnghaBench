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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u32 ;
struct drm_encoder {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_pending_flush ) (struct dpu_hw_ctl*) ;int /*<<< orphan*/  (* trigger_flush ) (struct dpu_hw_ctl*) ;int /*<<< orphan*/  (* update_pending_flush ) (struct dpu_hw_ctl*,int /*<<< orphan*/ ) ;} ;
struct dpu_hw_ctl {int /*<<< orphan*/  idx; TYPE_1__ ops; } ;
struct dpu_encoder_phys {int /*<<< orphan*/  intf_idx; struct dpu_hw_ctl* hw_ctl; int /*<<< orphan*/  hw_pp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*) ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int FUNC2 (struct dpu_encoder_phys*) ; 
 int /*<<< orphan*/  FUNC3 (struct dpu_hw_ctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dpu_hw_ctl*) ; 
 int /*<<< orphan*/  FUNC5 (struct dpu_hw_ctl*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct drm_encoder *drm_enc,
		struct dpu_encoder_phys *phys, uint32_t extra_flush_bits)
{
	struct dpu_hw_ctl *ctl;
	int pending_kickoff_cnt;
	u32 ret = UINT_MAX;

	if (!phys->hw_pp) {
		FUNC0("invalid pingpong hw\n");
		return;
	}

	ctl = phys->hw_ctl;
	if (!ctl || !ctl->ops.trigger_flush) {
		FUNC0("missing trigger cb\n");
		return;
	}

	pending_kickoff_cnt = FUNC2(phys);

	if (extra_flush_bits && ctl->ops.update_pending_flush)
		ctl->ops.update_pending_flush(ctl, extra_flush_bits);

	ctl->ops.trigger_flush(ctl);

	if (ctl->ops.get_pending_flush)
		ret = ctl->ops.get_pending_flush(ctl);

	FUNC6(FUNC1(drm_enc), phys->intf_idx,
				    pending_kickoff_cnt, ctl->idx,
				    extra_flush_bits, ret);
}