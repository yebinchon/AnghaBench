
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_aes_cmac_req_ctx {struct ccp_aes_cmac_exp_ctx* buf; int buf_count; struct ccp_aes_cmac_exp_ctx* iv; int null_msg; } ;
struct ccp_aes_cmac_exp_ctx {void const* iv; void const* buf; int buf_count; int null_msg; } ;
struct ahash_request {int dummy; } ;
typedef int state ;


 struct ccp_aes_cmac_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 int memcpy (struct ccp_aes_cmac_exp_ctx*,void const*,int) ;
 int memset (struct ccp_aes_cmac_req_ctx*,int ,int) ;

__attribute__((used)) static int ccp_aes_cmac_import(struct ahash_request *req, const void *in)
{
 struct ccp_aes_cmac_req_ctx *rctx = ahash_request_ctx(req);
 struct ccp_aes_cmac_exp_ctx state;


 memcpy(&state, in, sizeof(state));

 memset(rctx, 0, sizeof(*rctx));
 rctx->null_msg = state.null_msg;
 memcpy(rctx->iv, state.iv, sizeof(rctx->iv));
 rctx->buf_count = state.buf_count;
 memcpy(rctx->buf, state.buf, sizeof(rctx->buf));

 return 0;
}
