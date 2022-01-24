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
struct dpu_encoder_phys_cmd {int dummy; } ;
struct dpu_encoder_phys {int /*<<< orphan*/  pending_kickoff_cnt; TYPE_1__* hw_pp; int /*<<< orphan*/  parent; } ;
struct TYPE_2__ {scalar_t__ idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpu_encoder_phys_cmd*,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 scalar_t__ PINGPONG_0 ; 
 int FUNC5 (struct dpu_encoder_phys*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct dpu_encoder_phys_cmd* FUNC8 (struct dpu_encoder_phys*) ; 

__attribute__((used)) static void FUNC9(
		struct dpu_encoder_phys *phys_enc)
{
	struct dpu_encoder_phys_cmd *cmd_enc =
			FUNC8(phys_enc);
	int ret;

	if (!phys_enc || !phys_enc->hw_pp) {
		FUNC1("invalid encoder\n");
		return;
	}
	FUNC3("id:%u pp:%d pending_cnt:%d\n", FUNC2(phys_enc->parent),
		      phys_enc->hw_pp->idx - PINGPONG_0,
		      FUNC6(&phys_enc->pending_kickoff_cnt));

	/*
	 * Mark kickoff request as outstanding. If there are more than one,
	 * outstanding, then we have to wait for the previous one to complete
	 */
	ret = FUNC5(phys_enc);
	if (ret) {
		/* force pending_kickoff_cnt 0 to discard failed kickoff */
		FUNC7(&phys_enc->pending_kickoff_cnt, 0);
		FUNC4("failed wait_for_idle: id:%u ret:%d pp:%d\n",
			  FUNC2(phys_enc->parent), ret,
			  phys_enc->hw_pp->idx - PINGPONG_0);
	}

	FUNC0(cmd_enc, "pp:%d pending_cnt %d\n",
			phys_enc->hw_pp->idx - PINGPONG_0,
			FUNC6(&phys_enc->pending_kickoff_cnt));
}