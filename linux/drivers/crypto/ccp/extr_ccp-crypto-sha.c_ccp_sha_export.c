
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_sha_req_ctx {struct ccp_sha_exp_ctx* buf; int buf_count; struct ccp_sha_exp_ctx* ctx; int first; int msg_bits; int type; } ;
struct ccp_sha_exp_ctx {void* ctx; void* buf; int buf_count; int first; int msg_bits; int type; } ;
struct ahash_request {int dummy; } ;
typedef int state ;


 struct ccp_sha_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 int memcpy (void*,struct ccp_sha_exp_ctx*,int) ;
 int memset (struct ccp_sha_exp_ctx*,int ,int) ;

__attribute__((used)) static int ccp_sha_export(struct ahash_request *req, void *out)
{
 struct ccp_sha_req_ctx *rctx = ahash_request_ctx(req);
 struct ccp_sha_exp_ctx state;


 memset(&state, 0, sizeof(state));

 state.type = rctx->type;
 state.msg_bits = rctx->msg_bits;
 state.first = rctx->first;
 memcpy(state.ctx, rctx->ctx, sizeof(state.ctx));
 state.buf_count = rctx->buf_count;
 memcpy(state.buf, rctx->buf, sizeof(state.buf));


 memcpy(out, &state, sizeof(state));

 return 0;
}
