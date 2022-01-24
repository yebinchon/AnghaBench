#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dpu_encoder_phys_cmd {int dummy; } ;
struct dpu_encoder_phys {int /*<<< orphan*/  pending_kickoff_wq; int /*<<< orphan*/  pending_ctlstart_cnt; int /*<<< orphan*/  hw_ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct dpu_encoder_phys_cmd* FUNC3 (struct dpu_encoder_phys*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void *arg, int irq_idx)
{
	struct dpu_encoder_phys *phys_enc = arg;
	struct dpu_encoder_phys_cmd *cmd_enc;

	if (!phys_enc || !phys_enc->hw_ctl)
		return;

	FUNC0("ctl_start_irq");
	cmd_enc = FUNC3(phys_enc);

	FUNC2(&phys_enc->pending_ctlstart_cnt, -1, 0);

	/* Signal any waiting ctl start interrupt */
	FUNC4(&phys_enc->pending_kickoff_wq);
	FUNC1("ctl_start_irq");
}