
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_aes_cmac_req_ctx {struct ccp_aes_cmac_exp_ctx* buf; int buf_count; struct ccp_aes_cmac_exp_ctx* iv; int null_msg; } ;
struct ccp_aes_cmac_exp_ctx {void* iv; void* buf; int buf_count; int null_msg; } ;
struct ahash_request {int dummy; } ;
typedef int state ;


 struct ccp_aes_cmac_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 int memcpy (void*,struct ccp_aes_cmac_exp_ctx*,int) ;
 int memset (struct ccp_aes_cmac_exp_ctx*,int ,int) ;

__attribute__((used)) static int ccp_aes_cmac_export(struct ahash_request *req, void *out)
{
 struct ccp_aes_cmac_req_ctx *rctx = ahash_request_ctx(req);
 struct ccp_aes_cmac_exp_ctx state;


 memset(&state, 0, sizeof(state));

 state.null_msg = rctx->null_msg;
 memcpy(state.iv, rctx->iv, sizeof(state.iv));
 state.buf_count = rctx->buf_count;
 memcpy(state.buf, rctx->buf, sizeof(state.buf));


 memcpy(out, &state, sizeof(state));

 return 0;
}
