#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct hubp {int /*<<< orphan*/  inst; } ;
struct dpp {TYPE_2__* funcs; int /*<<< orphan*/  inst; } ;
struct dce_hwseq {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* hubp_pg_control ) (struct dce_hwseq*,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* dpp_pg_control ) (struct dce_hwseq*,int /*<<< orphan*/ ,int) ;} ;
struct dc {TYPE_1__ hwss; TYPE_3__* ctx; struct dce_hwseq* hwseq; } ;
struct TYPE_6__ {int /*<<< orphan*/  logger; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* dpp_reset ) (struct dpp*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DC_IP_REQUEST_CNTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IP_REQUEST_EN ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dce_hwseq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dce_hwseq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dpp*) ; 

__attribute__((used)) static void FUNC7(struct dc *dc,
		struct dpp *dpp,
		struct hubp *hubp)
{
	struct dce_hwseq *hws = dc->hwseq;
	FUNC0(dc->ctx->logger);

	if (FUNC2(DC_IP_REQUEST_CNTL)) {
		FUNC3(DC_IP_REQUEST_CNTL, 0,
				IP_REQUEST_EN, 1);
		dc->hwss.dpp_pg_control(hws, dpp->inst, false);
		dc->hwss.hubp_pg_control(hws, hubp->inst, false);
		dpp->funcs->dpp_reset(dpp);
		FUNC3(DC_IP_REQUEST_CNTL, 0,
				IP_REQUEST_EN, 0);
		FUNC1(
				"Power gated front end %d\n", hubp->inst);
	}
}