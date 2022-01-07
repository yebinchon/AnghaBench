
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpt_request_info {int incnt; } ;
struct cvm_req_ctx {struct cpt_request_info cpt_req; } ;
struct ablkcipher_request {int nbytes; int src; int info; } ;


 struct cvm_req_ctx* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 int create_ctx_hdr (struct ablkcipher_request*,int ,int *) ;
 int update_input_data (struct cpt_request_info*,int ,int ,int *) ;
 int update_input_iv (struct cpt_request_info*,int ,int ,int *) ;

__attribute__((used)) static inline u32 create_input_list(struct ablkcipher_request *req, u32 enc,
        u32 enc_iv_len)
{
 struct cvm_req_ctx *rctx = ablkcipher_request_ctx(req);
 struct cpt_request_info *req_info = &rctx->cpt_req;
 u32 argcnt = 0;

 create_ctx_hdr(req, enc, &argcnt);
 update_input_iv(req_info, req->info, enc_iv_len, &argcnt);
 update_input_data(req_info, req->src, req->nbytes, &argcnt);
 req_info->incnt = argcnt;

 return 0;
}
