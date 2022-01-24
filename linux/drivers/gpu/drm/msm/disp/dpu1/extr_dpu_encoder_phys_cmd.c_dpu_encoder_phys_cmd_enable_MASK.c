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
struct dpu_encoder_phys {scalar_t__ enable_state; TYPE_1__* hw_pp; } ;
struct TYPE_2__ {scalar_t__ idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpu_encoder_phys_cmd*,char*,scalar_t__) ; 
 scalar_t__ DPU_ENC_ENABLED ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ PINGPONG_0 ; 
 int /*<<< orphan*/  FUNC2 (struct dpu_encoder_phys*) ; 
 struct dpu_encoder_phys_cmd* FUNC3 (struct dpu_encoder_phys*) ; 

__attribute__((used)) static void FUNC4(struct dpu_encoder_phys *phys_enc)
{
	struct dpu_encoder_phys_cmd *cmd_enc =
		FUNC3(phys_enc);

	if (!phys_enc || !phys_enc->hw_pp) {
		FUNC1("invalid phys encoder\n");
		return;
	}

	FUNC0(cmd_enc, "pp %d\n", phys_enc->hw_pp->idx - PINGPONG_0);

	if (phys_enc->enable_state == DPU_ENC_ENABLED) {
		FUNC1("already enabled\n");
		return;
	}

	FUNC2(phys_enc);
	phys_enc->enable_state = DPU_ENC_ENABLED;
}