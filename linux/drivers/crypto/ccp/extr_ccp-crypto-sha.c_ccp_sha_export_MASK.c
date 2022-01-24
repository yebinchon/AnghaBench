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
struct ccp_sha_exp_ctx {void* ctx; void* buf; int /*<<< orphan*/  buf_count; int /*<<< orphan*/  first; int /*<<< orphan*/  msg_bits; int /*<<< orphan*/  type; } ;
struct ahash_request {int dummy; } ;
typedef  int /*<<< orphan*/  state ;

/* Variables and functions */
 struct ccp_sha_req_ctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (void*,struct ccp_sha_exp_ctx*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ccp_sha_exp_ctx*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct ahash_request *req, void *out)
{
	struct ccp_sha_req_ctx *rctx = FUNC0(req);
	struct ccp_sha_exp_ctx state;

	/* Don't let anything leak to 'out' */
	FUNC2(&state, 0, sizeof(state));

	state.type = rctx->type;
	state.msg_bits = rctx->msg_bits;
	state.first = rctx->first;
	FUNC1(state.ctx, rctx->ctx, sizeof(state.ctx));
	state.buf_count = rctx->buf_count;
	FUNC1(state.buf, rctx->buf, sizeof(state.buf));

	/* 'out' may not be aligned so memcpy from local variable */
	FUNC1(out, &state, sizeof(state));

	return 0;
}