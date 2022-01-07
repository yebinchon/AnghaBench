
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpt_request_info {int outcnt; } ;
struct cvm_req_ctx {struct cpt_request_info cpt_req; } ;
struct ablkcipher_request {int nbytes; int dst; int info; } ;


 struct cvm_req_ctx* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 int update_output_data (struct cpt_request_info*,int ,int ,int *) ;
 int update_output_iv (struct cpt_request_info*,int ,int ,int *) ;

__attribute__((used)) static inline void create_output_list(struct ablkcipher_request *req,
          u32 enc_iv_len)
{
 struct cvm_req_ctx *rctx = ablkcipher_request_ctx(req);
 struct cpt_request_info *req_info = &rctx->cpt_req;
 u32 argcnt = 0;
 update_output_iv(req_info, req->info, enc_iv_len, &argcnt);
 update_output_data(req_info, req->dst, req->nbytes, &argcnt);
 req_info->outcnt = argcnt;
}
