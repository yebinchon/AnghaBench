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
struct dpu_encoder_wait_info {int /*<<< orphan*/  timeout_ms; int /*<<< orphan*/ * atomic_cnt; int /*<<< orphan*/ * wq; } ;
struct dpu_encoder_phys_cmd {scalar_t__ pp_timeout_report_cnt; } ;
struct dpu_encoder_phys {int /*<<< orphan*/  pending_kickoff_cnt; int /*<<< orphan*/  pending_kickoff_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  INTR_IDX_PINGPONG ; 
 int /*<<< orphan*/  KICKOFF_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC1 (struct dpu_encoder_phys*) ; 
 int FUNC2 (struct dpu_encoder_phys*,int /*<<< orphan*/ ,struct dpu_encoder_wait_info*) ; 
 struct dpu_encoder_phys_cmd* FUNC3 (struct dpu_encoder_phys*) ; 

__attribute__((used)) static int FUNC4(
		struct dpu_encoder_phys *phys_enc)
{
	struct dpu_encoder_phys_cmd *cmd_enc =
			FUNC3(phys_enc);
	struct dpu_encoder_wait_info wait_info;
	int ret;

	if (!phys_enc) {
		FUNC0("invalid encoder\n");
		return -EINVAL;
	}

	wait_info.wq = &phys_enc->pending_kickoff_wq;
	wait_info.atomic_cnt = &phys_enc->pending_kickoff_cnt;
	wait_info.timeout_ms = KICKOFF_TIMEOUT_MS;

	ret = FUNC2(phys_enc, INTR_IDX_PINGPONG,
			&wait_info);
	if (ret == -ETIMEDOUT)
		FUNC1(phys_enc);
	else if (!ret)
		cmd_enc->pp_timeout_report_cnt = 0;

	return ret;
}