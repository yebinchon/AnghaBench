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
typedef  int /*<<< orphan*/  u32 ;
struct spu_hw {scalar_t__ spu_type; } ;
struct TYPE_4__ {int /*<<< orphan*/  digest; } ;
struct iproc_reqctx_s {scalar_t__ is_sw_hmac; TYPE_1__ msg_buf; struct iproc_ctx_s* ctx; struct crypto_async_request* parent; } ;
struct TYPE_5__ {size_t alg; scalar_t__ mode; } ;
struct iproc_ctx_s {TYPE_2__ auth; int /*<<< orphan*/  digestsize; } ;
struct crypto_async_request {int dummy; } ;
struct ahash_request {scalar_t__ result; } ;
struct TYPE_6__ {int /*<<< orphan*/ * hash_cnt; int /*<<< orphan*/ * op_counts; int /*<<< orphan*/ * hmac_cnt; struct spu_hw spu; } ;

/* Variables and functions */
 size_t HASH_ALG_MD5 ; 
 scalar_t__ HASH_MODE_HMAC ; 
 size_t SPU_OP_HASH ; 
 size_t SPU_OP_HMAC ; 
 scalar_t__ SPU_TYPE_SPUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ahash_request* FUNC1 (struct crypto_async_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_3__ iproc_priv ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ahash_request*,struct iproc_ctx_s*) ; 

__attribute__((used)) static int FUNC6(struct iproc_reqctx_s *rctx)
{
	struct spu_hw *spu = &iproc_priv.spu;
	struct crypto_async_request *areq = rctx->parent;
	struct ahash_request *req = FUNC1(areq);
	struct iproc_ctx_s *ctx = rctx->ctx;
	int err;

	FUNC4(req->result, rctx->msg_buf.digest, ctx->digestsize);

	if (spu->spu_type == SPU_TYPE_SPUM) {
		/* byte swap the output from the UPDT function to network byte
		 * order
		 */
		if (ctx->auth.alg == HASH_ALG_MD5) {
			FUNC0((u32 *)req->result);
			FUNC0(((u32 *)req->result) + 1);
			FUNC0(((u32 *)req->result) + 2);
			FUNC0(((u32 *)req->result) + 3);
			FUNC0(((u32 *)req->result) + 4);
		}
	}

	FUNC3("  digest ", req->result, ctx->digestsize);

	/* if this an HMAC then do the outer hash */
	if (rctx->is_sw_hmac) {
		err = FUNC5(req, ctx);
		if (err < 0)
			return err;
		FUNC3("  hmac: ", req->result, ctx->digestsize);
	}

	if (rctx->is_sw_hmac || ctx->auth.mode == HASH_MODE_HMAC) {
		FUNC2(&iproc_priv.op_counts[SPU_OP_HMAC]);
		FUNC2(&iproc_priv.hmac_cnt[ctx->auth.alg]);
	} else {
		FUNC2(&iproc_priv.op_counts[SPU_OP_HASH]);
		FUNC2(&iproc_priv.hash_cnt[ctx->auth.alg]);
	}

	return 0;
}