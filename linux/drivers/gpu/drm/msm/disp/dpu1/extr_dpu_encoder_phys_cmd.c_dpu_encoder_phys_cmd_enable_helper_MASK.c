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
struct TYPE_2__ {int /*<<< orphan*/  (* update_pending_flush ) (struct dpu_hw_ctl*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* get_bitmask_intf ) (struct dpu_hw_ctl*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
struct dpu_hw_ctl {TYPE_1__ ops; } ;
struct dpu_encoder_phys {int /*<<< orphan*/  intf_idx; struct dpu_hw_ctl* hw_ctl; int /*<<< orphan*/  hw_pp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dpu_encoder_phys*) ; 
 int /*<<< orphan*/  FUNC2 (struct dpu_encoder_phys*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dpu_encoder_phys*) ; 
 int /*<<< orphan*/  FUNC4 (struct dpu_hw_ctl*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dpu_hw_ctl*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(
		struct dpu_encoder_phys *phys_enc)
{
	struct dpu_hw_ctl *ctl;
	u32 flush_mask = 0;

	if (!phys_enc || !phys_enc->hw_ctl || !phys_enc->hw_pp) {
		FUNC0("invalid arg(s), encoder %d\n", phys_enc != 0);
		return;
	}

	FUNC2(phys_enc, phys_enc->intf_idx);

	FUNC1(phys_enc);

	if (!FUNC3(phys_enc))
		return;

	ctl = phys_enc->hw_ctl;
	ctl->ops.get_bitmask_intf(ctl, &flush_mask, phys_enc->intf_idx);
	ctl->ops.update_pending_flush(ctl, flush_mask);
}