
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_async_request {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct ccp_aes_cmac_req_ctx {unsigned int hash_rem; unsigned int nbytes; unsigned int buf_count; int data_sg; int iv; scalar_t__ final; int src; int buf; } ;
struct ahash_request {scalar_t__ result; } ;


 struct ahash_request* ahash_request_cast (struct crypto_async_request*) ;
 struct ccp_aes_cmac_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 unsigned int crypto_ahash_digestsize (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int memcpy (scalar_t__,int ,unsigned int) ;
 int scatterwalk_map_and_copy (int ,int ,unsigned int,unsigned int,int ) ;
 int sg_free_table (int *) ;

__attribute__((used)) static int ccp_aes_cmac_complete(struct crypto_async_request *async_req,
     int ret)
{
 struct ahash_request *req = ahash_request_cast(async_req);
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct ccp_aes_cmac_req_ctx *rctx = ahash_request_ctx(req);
 unsigned int digest_size = crypto_ahash_digestsize(tfm);

 if (ret)
  goto e_free;

 if (rctx->hash_rem) {

  unsigned int offset = rctx->nbytes - rctx->hash_rem;

  scatterwalk_map_and_copy(rctx->buf, rctx->src,
      offset, rctx->hash_rem, 0);
  rctx->buf_count = rctx->hash_rem;
 } else {
  rctx->buf_count = 0;
 }


 if (req->result && rctx->final)
  memcpy(req->result, rctx->iv, digest_size);

e_free:
 sg_free_table(&rctx->data_sg);

 return ret;
}
