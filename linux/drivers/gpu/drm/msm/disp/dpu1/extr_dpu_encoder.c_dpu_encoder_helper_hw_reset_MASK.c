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
struct TYPE_2__ {int (* reset ) (struct dpu_hw_ctl*) ;} ;
struct dpu_hw_ctl {int /*<<< orphan*/  idx; TYPE_1__ ops; } ;
struct dpu_encoder_virt {int dummy; } ;
struct dpu_encoder_phys {int /*<<< orphan*/  enable_state; int /*<<< orphan*/  parent; struct dpu_hw_ctl* hw_ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPU_ENC_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dpu_encoder_virt*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dpu_hw_ctl*) ; 
 struct dpu_encoder_virt* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct dpu_encoder_phys *phys_enc)
{
	struct dpu_encoder_virt *dpu_enc;
	struct dpu_hw_ctl *ctl;
	int rc;

	if (!phys_enc) {
		FUNC0("invalid encoder\n");
		return;
	}
	dpu_enc = FUNC5(phys_enc->parent);
	ctl = phys_enc->hw_ctl;

	if (!ctl || !ctl->ops.reset)
		return;

	FUNC3("id:%u ctl %d reset\n", FUNC2(phys_enc->parent),
		      ctl->idx);

	rc = ctl->ops.reset(ctl);
	if (rc)
		FUNC1(dpu_enc, "ctl %d reset failure\n",  ctl->idx);

	phys_enc->enable_state = DPU_ENC_ENABLED;
}