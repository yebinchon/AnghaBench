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
typedef  int /*<<< orphan*/  u32 ;
struct dpu_encoder_phys {int /*<<< orphan*/  pending_kickoff_wq; TYPE_2__* hw_pp; int /*<<< orphan*/  parent; int /*<<< orphan*/  enc_spinlock; int /*<<< orphan*/  pending_kickoff_cnt; TYPE_1__* parent_ops; } ;
struct TYPE_4__ {scalar_t__ idx; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* handle_frame_done ) (int /*<<< orphan*/ ,struct dpu_encoder_phys*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  DPU_ENCODER_FRAME_EVENT_DONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ PINGPONG_0 ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct dpu_encoder_phys*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(void *arg, int irq_idx)
{
	struct dpu_encoder_phys *phys_enc = arg;
	unsigned long lock_flags;
	int new_cnt;
	u32 event = DPU_ENCODER_FRAME_EVENT_DONE;

	if (!phys_enc || !phys_enc->hw_pp)
		return;

	FUNC0("pp_done_irq");
	/* notify all synchronous clients first, then asynchronous clients */
	if (phys_enc->parent_ops->handle_frame_done)
		phys_enc->parent_ops->handle_frame_done(phys_enc->parent,
				phys_enc, event);

	FUNC4(phys_enc->enc_spinlock, lock_flags);
	new_cnt = FUNC3(&phys_enc->pending_kickoff_cnt, -1, 0);
	FUNC5(phys_enc->enc_spinlock, lock_flags);

	FUNC7(FUNC2(phys_enc->parent),
					  phys_enc->hw_pp->idx - PINGPONG_0,
					  new_cnt, event);

	/* Signal any waiting atomic commit thread */
	FUNC8(&phys_enc->pending_kickoff_wq);
	FUNC1("pp_done_irq");
}