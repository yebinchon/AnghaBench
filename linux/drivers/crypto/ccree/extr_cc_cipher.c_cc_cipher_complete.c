
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int iv; struct scatterlist* src; struct scatterlist* dst; } ;
struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct cipher_req_ctx {int iv; } ;


 int EINPROGRESS ;
 int cc_unmap_cipher_request (struct device*,struct cipher_req_ctx*,unsigned int,struct scatterlist*,struct scatterlist*) ;
 unsigned int crypto_skcipher_ivsize (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int kzfree (int ) ;
 int memcpy (int ,int ,unsigned int) ;
 int skcipher_request_complete (struct skcipher_request*,int) ;
 struct cipher_req_ctx* skcipher_request_ctx (struct skcipher_request*) ;

__attribute__((used)) static void cc_cipher_complete(struct device *dev, void *cc_req, int err)
{
 struct skcipher_request *req = (struct skcipher_request *)cc_req;
 struct scatterlist *dst = req->dst;
 struct scatterlist *src = req->src;
 struct cipher_req_ctx *req_ctx = skcipher_request_ctx(req);
 struct crypto_skcipher *sk_tfm = crypto_skcipher_reqtfm(req);
 unsigned int ivsize = crypto_skcipher_ivsize(sk_tfm);

 if (err != -EINPROGRESS) {

  cc_unmap_cipher_request(dev, req_ctx, ivsize, src, dst);
  memcpy(req->iv, req_ctx->iv, ivsize);
  kzfree(req_ctx->iv);
 }

 skcipher_request_complete(req, err);
}
