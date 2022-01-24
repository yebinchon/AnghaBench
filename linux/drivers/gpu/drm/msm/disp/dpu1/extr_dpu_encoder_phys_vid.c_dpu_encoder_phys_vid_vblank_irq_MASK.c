#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int (* get_flush_register ) (struct dpu_hw_ctl*) ;int (* get_pending_flush ) (struct dpu_hw_ctl*) ;} ;
struct dpu_hw_ctl {TYPE_1__ ops; } ;
struct dpu_encoder_phys {int /*<<< orphan*/  parent; TYPE_2__* parent_ops; int /*<<< orphan*/  pending_kickoff_wq; int /*<<< orphan*/  enc_spinlock; int /*<<< orphan*/  pending_kickoff_cnt; struct dpu_hw_ctl* hw_ctl; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* handle_frame_done ) (int /*<<< orphan*/ ,struct dpu_encoder_phys*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* handle_vblank_virt ) (int /*<<< orphan*/ ,struct dpu_encoder_phys*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  DPU_ENCODER_FRAME_EVENT_DONE ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct dpu_encoder_phys*) ; 
 int FUNC7 (struct dpu_hw_ctl*) ; 
 int FUNC8 (struct dpu_hw_ctl*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct dpu_encoder_phys*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(void *arg, int irq_idx)
{
	struct dpu_encoder_phys *phys_enc = arg;
	struct dpu_hw_ctl *hw_ctl;
	unsigned long lock_flags;
	u32 flush_register = 0;
	int new_cnt = -1, old_cnt = -1;

	if (!phys_enc)
		return;

	hw_ctl = phys_enc->hw_ctl;
	if (!hw_ctl)
		return;

	FUNC0("vblank_irq");

	if (phys_enc->parent_ops->handle_vblank_virt)
		phys_enc->parent_ops->handle_vblank_virt(phys_enc->parent,
				phys_enc);

	old_cnt  = FUNC3(&phys_enc->pending_kickoff_cnt);

	/*
	 * only decrement the pending flush count if we've actually flushed
	 * hardware. due to sw irq latency, vblank may have already happened
	 * so we need to double-check with hw that it accepted the flush bits
	 */
	FUNC4(phys_enc->enc_spinlock, lock_flags);
	if (hw_ctl && hw_ctl->ops.get_flush_register)
		flush_register = hw_ctl->ops.get_flush_register(hw_ctl);

	if (!(flush_register & hw_ctl->ops.get_pending_flush(hw_ctl)))
		new_cnt = FUNC2(&phys_enc->pending_kickoff_cnt,
				-1, 0);
	FUNC5(phys_enc->enc_spinlock, lock_flags);

	/* Signal any waiting atomic commit thread */
	FUNC10(&phys_enc->pending_kickoff_wq);

	phys_enc->parent_ops->handle_frame_done(phys_enc->parent, phys_enc,
			DPU_ENCODER_FRAME_EVENT_DONE);

	FUNC1("vblank_irq");
}