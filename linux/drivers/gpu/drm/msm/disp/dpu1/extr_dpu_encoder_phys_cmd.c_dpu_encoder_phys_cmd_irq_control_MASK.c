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
struct dpu_encoder_phys {int /*<<< orphan*/  vblank_refcount; TYPE_1__* hw_pp; int /*<<< orphan*/  parent; } ;
struct TYPE_2__ {scalar_t__ idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTR_IDX_CTL_START ; 
 int /*<<< orphan*/  INTR_IDX_PINGPONG ; 
 int /*<<< orphan*/  INTR_IDX_UNDERRUN ; 
 scalar_t__ PINGPONG_0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dpu_encoder_phys*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dpu_encoder_phys*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dpu_encoder_phys*,int) ; 
 scalar_t__ FUNC5 (struct dpu_encoder_phys*) ; 
 struct dpu_encoder_phys_cmd* FUNC6 (struct dpu_encoder_phys*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct dpu_encoder_phys *phys_enc,
		bool enable)
{
	struct dpu_encoder_phys_cmd *cmd_enc;

	if (!phys_enc)
		return;

	cmd_enc = FUNC6(phys_enc);

	FUNC7(FUNC0(phys_enc->parent),
			phys_enc->hw_pp->idx - PINGPONG_0,
			enable, FUNC1(&phys_enc->vblank_refcount));

	if (enable) {
		FUNC2(phys_enc, INTR_IDX_PINGPONG);
		FUNC2(phys_enc, INTR_IDX_UNDERRUN);
		FUNC4(phys_enc, true);

		if (FUNC5(phys_enc))
			FUNC2(phys_enc,
					INTR_IDX_CTL_START);
	} else {
		if (FUNC5(phys_enc))
			FUNC3(phys_enc,
					INTR_IDX_CTL_START);

		FUNC3(phys_enc, INTR_IDX_UNDERRUN);
		FUNC4(phys_enc, false);
		FUNC3(phys_enc, INTR_IDX_PINGPONG);
	}
}