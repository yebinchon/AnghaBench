
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_hw_desc {int dummy; } ;
struct aead_request {int dummy; } ;
struct aead_req_ctx {scalar_t__ assoclen; } ;


 int DIN_HASH ;
 struct aead_req_ctx* aead_request_ctx (struct aead_request*) ;
 int cc_set_assoc_desc (struct aead_request*,int ,struct cc_hw_desc*,unsigned int*) ;

__attribute__((used)) static void cc_proc_header_desc(struct aead_request *req,
    struct cc_hw_desc desc[],
    unsigned int *seq_size)
{
 struct aead_req_ctx *areq_ctx = aead_request_ctx(req);
 unsigned int idx = *seq_size;


 if (areq_ctx->assoclen > 0)
  cc_set_assoc_desc(req, DIN_HASH, desc, &idx);


 *seq_size = idx;
}
