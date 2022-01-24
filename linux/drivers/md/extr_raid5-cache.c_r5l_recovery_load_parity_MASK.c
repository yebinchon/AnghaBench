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
struct stripe_head {size_t pd_idx; size_t qd_idx; int /*<<< orphan*/  state; TYPE_2__* dev; } ;
struct r5l_recovery_ctx {int meta_total_blocks; } ;
struct r5l_payload_data_parity {int /*<<< orphan*/ * checksum; } ;
struct r5l_log {TYPE_1__* rdev; } ;
struct r5conf {int max_degraded; } ;
struct mddev {struct r5conf* private; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_4__ {int /*<<< orphan*/  flags; void* log_checksum; int /*<<< orphan*/  page; } ;
struct TYPE_3__ {struct mddev* mddev; } ;

/* Variables and functions */
 int BLOCK_SECTORS ; 
 int /*<<< orphan*/  R5_Wantwrite ; 
 int /*<<< orphan*/  STRIPE_R5C_CACHING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct r5l_log*,struct r5l_recovery_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct r5l_log*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct r5l_log *log,
				     struct stripe_head *sh,
				     struct r5l_recovery_ctx *ctx,
				     struct r5l_payload_data_parity *payload,
				     sector_t log_offset)
{
	struct mddev *mddev = log->rdev->mddev;
	struct r5conf *conf = mddev->private;

	ctx->meta_total_blocks += BLOCK_SECTORS * conf->max_degraded;
	FUNC2(log, ctx, sh->dev[sh->pd_idx].page, log_offset);
	sh->dev[sh->pd_idx].log_checksum =
		FUNC1(payload->checksum[0]);
	FUNC4(R5_Wantwrite, &sh->dev[sh->pd_idx].flags);

	if (sh->qd_idx >= 0) {
		FUNC2(
			log, ctx, sh->dev[sh->qd_idx].page,
			FUNC3(log, log_offset, BLOCK_SECTORS));
		sh->dev[sh->qd_idx].log_checksum =
			FUNC1(payload->checksum[1]);
		FUNC4(R5_Wantwrite, &sh->dev[sh->qd_idx].flags);
	}
	FUNC0(STRIPE_R5C_CACHING, &sh->state);
}