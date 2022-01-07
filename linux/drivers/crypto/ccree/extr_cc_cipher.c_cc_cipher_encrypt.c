
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;
struct cipher_req_ctx {int dummy; } ;


 int DRV_CRYPTO_DIRECTION_ENCRYPT ;
 int cc_cipher_process (struct skcipher_request*,int ) ;
 int memset (struct cipher_req_ctx*,int ,int) ;
 struct cipher_req_ctx* skcipher_request_ctx (struct skcipher_request*) ;

__attribute__((used)) static int cc_cipher_encrypt(struct skcipher_request *req)
{
 struct cipher_req_ctx *req_ctx = skcipher_request_ctx(req);

 memset(req_ctx, 0, sizeof(*req_ctx));

 return cc_cipher_process(req, DRV_CRYPTO_DIRECTION_ENCRYPT);
}
