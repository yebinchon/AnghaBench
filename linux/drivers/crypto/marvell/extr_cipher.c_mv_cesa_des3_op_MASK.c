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
struct TYPE_4__ {int /*<<< orphan*/  tfm; } ;
struct skcipher_request {TYPE_1__ base; } ;
struct TYPE_5__ {int /*<<< orphan*/  key; } ;
struct TYPE_6__ {TYPE_2__ blkcipher; } ;
struct mv_cesa_op_ctx {TYPE_3__ ctx; } ;
struct mv_cesa_des3_ctx {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  CESA_SA_DESC_CFG_CRYPTM_3DES ; 
 int /*<<< orphan*/  CESA_SA_DESC_CFG_CRYPTM_MSK ; 
 int /*<<< orphan*/  DES3_EDE_KEY_SIZE ; 
 struct mv_cesa_des3_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct skcipher_request*,struct mv_cesa_op_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct mv_cesa_op_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct skcipher_request *req,
			   struct mv_cesa_op_ctx *tmpl)
{
	struct mv_cesa_des3_ctx *ctx = FUNC0(req->base.tfm);

	FUNC3(tmpl, CESA_SA_DESC_CFG_CRYPTM_3DES,
			      CESA_SA_DESC_CFG_CRYPTM_MSK);

	FUNC1(tmpl->ctx.blkcipher.key, ctx->key, DES3_EDE_KEY_SIZE);

	return FUNC2(req, tmpl);
}