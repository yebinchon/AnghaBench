#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct radeon_device {scalar_t__ family; } ;
struct atom_context {scalar_t__ cmd_table; scalar_t__ data_table; TYPE_2__* card; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int ATOM_CMD_INIT ; 
 int ATOM_CMD_SPDFANCNTL ; 
 scalar_t__ ATOM_DATA_FWI_PTR ; 
 scalar_t__ ATOM_FWI_DEFMCLK_PTR ; 
 scalar_t__ ATOM_FWI_DEFSCLK_PTR ; 
 scalar_t__ CHIP_R600 ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (struct atom_context*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct atom_context *ctx)
{
	struct radeon_device *rdev = ctx->card->dev->dev_private;
	int hwi = FUNC0(ctx->data_table + ATOM_DATA_FWI_PTR);
	uint32_t ps[16];
	int ret;

	FUNC4(ps, 0, 64);

	ps[0] = FUNC3(FUNC1(hwi + ATOM_FWI_DEFSCLK_PTR));
	ps[1] = FUNC3(FUNC1(hwi + ATOM_FWI_DEFMCLK_PTR));
	if (!ps[0] || !ps[1])
		return 1;

	if (!FUNC0(ctx->cmd_table + 4 + 2 * ATOM_CMD_INIT))
		return 1;
	ret = FUNC2(ctx, ATOM_CMD_INIT, ps);
	if (ret)
		return ret;

	FUNC4(ps, 0, 64);

	if (rdev->family < CHIP_R600) {
		if (FUNC0(ctx->cmd_table + 4 + 2 * ATOM_CMD_SPDFANCNTL))
			FUNC2(ctx, ATOM_CMD_SPDFANCNTL, ps);
	}
	return ret;
}