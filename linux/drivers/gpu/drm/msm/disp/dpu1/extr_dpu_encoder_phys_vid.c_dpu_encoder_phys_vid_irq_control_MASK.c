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
struct dpu_encoder_phys {int /*<<< orphan*/  vblank_refcount; TYPE_1__* hw_intf; int /*<<< orphan*/  parent; } ;
struct TYPE_2__ {scalar_t__ idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ INTF_0 ; 
 int /*<<< orphan*/  INTR_IDX_UNDERRUN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dpu_encoder_phys*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dpu_encoder_phys*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dpu_encoder_phys*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct dpu_encoder_phys *phys_enc,
		bool enable)
{
	int ret;

	if (!phys_enc)
		return;

	FUNC5(FUNC0(phys_enc->parent),
			    phys_enc->hw_intf->idx - INTF_0,
			    enable,
			    FUNC1(&phys_enc->vblank_refcount));

	if (enable) {
		ret = FUNC4(phys_enc, true);
		if (ret)
			return;

		FUNC2(phys_enc, INTR_IDX_UNDERRUN);
	} else {
		FUNC4(phys_enc, false);
		FUNC3(phys_enc, INTR_IDX_UNDERRUN);
	}
}