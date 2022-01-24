#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ccp_sha_req_ctx {struct ccp_sha_exp_ctx* buf; int /*<<< orphan*/  buf_count; struct ccp_sha_exp_ctx* ctx; int /*<<< orphan*/  first; int /*<<< orphan*/  msg_bits; int /*<<< orphan*/  type; } ;
struct ccp_sha_exp_ctx {void const* ctx; void const* buf; int /*<<< orphan*/  buf_count; int /*<<< orphan*/  first; int /*<<< orphan*/  msg_bits; int /*<<< orphan*/  type; } ;
struct ahash_request {int dummy; } ;
typedef  int /*<<< orphan*/  state ;

/* Variables and functions */
 struct ccp_sha_req_ctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct ccp_sha_exp_ctx*,void const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ccp_sha_req_ctx*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct ahash_request *req, const void *in)
{
	struct ccp_sha_req_ctx *rctx = FUNC0(req);
	struct ccp_sha_exp_ctx state;

	/* 'in' may not be aligned so memcpy to local variable */
	FUNC1(&state, in, sizeof(state));

	FUNC2(rctx, 0, sizeof(*rctx));
	rctx->type = state.type;
	rctx->msg_bits = state.msg_bits;
	rctx->first = state.first;
	FUNC1(rctx->ctx, state.ctx, sizeof(rctx->ctx));
	rctx->buf_count = state.buf_count;
	FUNC1(rctx->buf, state.buf, sizeof(rctx->buf));

	return 0;
}