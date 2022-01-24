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
struct dpu_encoder_phys {TYPE_1__* hw_intf; int /*<<< orphan*/  parent; int /*<<< orphan*/  vblank_refcount; } ;
struct TYPE_2__ {scalar_t__ idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__,int,int,int) ; 
 int EINVAL ; 
 scalar_t__ INTF_0 ; 
 int /*<<< orphan*/  INTR_IDX_VSYNC ; 
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

	if (!phys_enc) {
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

	FUNC2("id:%u enable=%d/%d\n", FUNC1(phys_enc->parent), enable,
		      FUNC6(&phys_enc->vblank_refcount));

	if (enable && FUNC5(&phys_enc->vblank_refcount) == 1)
		ret = FUNC7(phys_enc, INTR_IDX_VSYNC);
	else if (!enable && FUNC4(&phys_enc->vblank_refcount) == 0)
		ret = FUNC8(phys_enc,
				INTR_IDX_VSYNC);

end:
	if (ret) {
		FUNC3("failed: id:%u intf:%d ret:%d enable:%d refcnt:%d\n",
			  FUNC1(phys_enc->parent),
			  phys_enc->hw_intf->idx - INTF_0, ret, enable,
			  refcount);
	}
	return ret;
}