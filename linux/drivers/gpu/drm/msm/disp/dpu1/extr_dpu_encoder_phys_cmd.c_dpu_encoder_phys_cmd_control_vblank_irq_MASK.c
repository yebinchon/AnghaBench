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
struct dpu_encoder_phys {TYPE_1__* hw_pp; int /*<<< orphan*/  parent; int /*<<< orphan*/  vblank_refcount; } ;
struct TYPE_2__ {scalar_t__ idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__,int,char*,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  INTR_IDX_RDPTR ; 
 scalar_t__ PINGPONG_0 ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct dpu_encoder_phys*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct dpu_encoder_phys*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dpu_encoder_phys*) ; 

__attribute__((used)) static int FUNC10(
		struct dpu_encoder_phys *phys_enc,
		bool enable)
{
	int ret = 0;
	int refcount;

	if (!phys_enc || !phys_enc->hw_pp) {
		FUNC0("invalid encoder\n");
		return -EINVAL;
	}

	refcount = FUNC6(&phys_enc->vblank_refcount);

	/* Slave encoders don't report vblank */
	if (!FUNC9(phys_enc))
		goto end;

	/* protect against negative */
	if (!enable && refcount == 0) {
		ret = -EINVAL;
		goto end;
	}

	FUNC2("id:%u pp:%d enable=%s/%d\n", FUNC1(phys_enc->parent),
		      phys_enc->hw_pp->idx - PINGPONG_0,
		      enable ? "true" : "false", refcount);

	if (enable && FUNC5(&phys_enc->vblank_refcount) == 1)
		ret = FUNC7(phys_enc, INTR_IDX_RDPTR);
	else if (!enable && FUNC4(&phys_enc->vblank_refcount) == 0)
		ret = FUNC8(phys_enc,
				INTR_IDX_RDPTR);

end:
	if (ret) {
		FUNC3("vblank irq err id:%u pp:%d ret:%d, enable %s/%d\n",
			  FUNC1(phys_enc->parent),
			  phys_enc->hw_pp->idx - PINGPONG_0, ret,
			  enable ? "true" : "false", refcount);
	}

	return ret;
}