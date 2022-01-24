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
struct TYPE_5__ {int /*<<< orphan*/  iv; } ;
struct TYPE_6__ {TYPE_2__ hash; } ;
struct mv_cesa_op_ctx {TYPE_3__ ctx; } ;
struct mv_cesa_hmac_ctx {int /*<<< orphan*/  iv; } ;
struct TYPE_4__ {int /*<<< orphan*/  tfm; } ;
struct ahash_request {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CESA_SA_DESC_CFG_MACM_HMAC_SHA1 ; 
 struct mv_cesa_hmac_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*,struct mv_cesa_op_ctx*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mv_cesa_op_ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ahash_request *req)
{
	struct mv_cesa_hmac_ctx *ctx = FUNC0(req->base.tfm);
	struct mv_cesa_op_ctx tmpl = { };

	FUNC3(&tmpl, CESA_SA_DESC_CFG_MACM_HMAC_SHA1);
	FUNC1(tmpl.ctx.hash.iv, ctx->iv, sizeof(ctx->iv));

	FUNC2(req, &tmpl, false);

	return 0;
}