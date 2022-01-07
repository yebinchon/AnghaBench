
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_sha_req_ctx {struct ccp_sha_exp_ctx* buf; int buf_count; struct ccp_sha_exp_ctx* ctx; int first; int msg_bits; int type; } ;
struct ccp_sha_exp_ctx {void const* ctx; void const* buf; int buf_count; int first; int msg_bits; int type; } ;
struct ahash_request {int dummy; } ;
typedef int state ;


 struct ccp_sha_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 int memcpy (struct ccp_sha_exp_ctx*,void const*,int) ;
 int memset (struct ccp_sha_req_ctx*,int ,int) ;

__attribute__((used)) static int ccp_sha_import(struct ahash_request *req, const void *in)
{
 struct ccp_sha_req_ctx *rctx = ahash_request_ctx(req);
 struct ccp_sha_exp_ctx state;


 memcpy(&state, in, sizeof(state));

 memset(rctx, 0, sizeof(*rctx));
 rctx->type = state.type;
 rctx->msg_bits = state.msg_bits;
 rctx->first = state.first;
 memcpy(rctx->ctx, state.ctx, sizeof(rctx->ctx));
 rctx->buf_count = state.buf_count;
 memcpy(rctx->buf, state.buf, sizeof(rctx->buf));

 return 0;
}
