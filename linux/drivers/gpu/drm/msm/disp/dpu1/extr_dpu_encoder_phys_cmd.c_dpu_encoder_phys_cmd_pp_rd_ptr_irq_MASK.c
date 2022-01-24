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
struct dpu_encoder_phys_cmd {int /*<<< orphan*/  pending_vblank_wq; int /*<<< orphan*/  pending_vblank_cnt; } ;
struct dpu_encoder_phys {int /*<<< orphan*/  parent; TYPE_1__* parent_ops; int /*<<< orphan*/  hw_pp; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* handle_vblank_virt ) (int /*<<< orphan*/ ,struct dpu_encoder_phys*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct dpu_encoder_phys*) ; 
 struct dpu_encoder_phys_cmd* FUNC4 (struct dpu_encoder_phys*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void *arg, int irq_idx)
{
	struct dpu_encoder_phys *phys_enc = arg;
	struct dpu_encoder_phys_cmd *cmd_enc;

	if (!phys_enc || !phys_enc->hw_pp)
		return;

	FUNC0("rd_ptr_irq");
	cmd_enc = FUNC4(phys_enc);

	if (phys_enc->parent_ops->handle_vblank_virt)
		phys_enc->parent_ops->handle_vblank_virt(phys_enc->parent,
			phys_enc);

	FUNC2(&cmd_enc->pending_vblank_cnt, -1, 0);
	FUNC5(&cmd_enc->pending_vblank_wq);
	FUNC1("rd_ptr_irq");
}