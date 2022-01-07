
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_aes_cmac_req_ctx {int null_msg; } ;
struct ahash_request {int dummy; } ;


 struct ccp_aes_cmac_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 int memset (struct ccp_aes_cmac_req_ctx*,int ,int) ;

__attribute__((used)) static int ccp_aes_cmac_init(struct ahash_request *req)
{
 struct ccp_aes_cmac_req_ctx *rctx = ahash_request_ctx(req);

 memset(rctx, 0, sizeof(*rctx));

 rctx->null_msg = 1;

 return 0;
}
