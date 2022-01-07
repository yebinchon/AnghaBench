
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct artpec6_crypto_aead_req_ctx {int decrypt; int common; } ;
struct aead_request {scalar_t__ cryptlen; int base; } ;


 scalar_t__ AES_BLOCK_SIZE ;
 int EINVAL ;
 struct artpec6_crypto_aead_req_ctx* aead_request_ctx (struct aead_request*) ;
 int artpec6_crypto_common_destroy (int *) ;
 int artpec6_crypto_common_init (int *,int *,int ,int *,int ) ;
 int artpec6_crypto_complete_aead ;
 int artpec6_crypto_prepare_aead (struct aead_request*) ;
 int artpec6_crypto_submit (int *) ;

__attribute__((used)) static int artpec6_crypto_aead_decrypt(struct aead_request *req)
{
 int ret;
 struct artpec6_crypto_aead_req_ctx *req_ctx = aead_request_ctx(req);

 req_ctx->decrypt = 1;
 if (req->cryptlen < AES_BLOCK_SIZE)
  return -EINVAL;

 ret = artpec6_crypto_common_init(&req_ctx->common,
      &req->base,
      artpec6_crypto_complete_aead,
      ((void*)0), 0);
 if (ret)
  return ret;

 ret = artpec6_crypto_prepare_aead(req);
 if (ret) {
  artpec6_crypto_common_destroy(&req_ctx->common);
  return ret;
 }

 return artpec6_crypto_submit(&req_ctx->common);
}
