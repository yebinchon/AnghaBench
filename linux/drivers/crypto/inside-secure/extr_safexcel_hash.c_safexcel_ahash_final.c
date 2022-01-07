
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct safexcel_ahash_req {int finish; int len; int block_sz; int* cache; int hmac_zlen; void* digest; scalar_t__ hmac; scalar_t__ len_is_le; } ;
struct safexcel_ahash_ctx {scalar_t__ alg; } ;
struct ahash_request {int nbytes; int result; } ;


 scalar_t__ CONTEXT_CONTROL_CRYPTO_ALG_MD5 ;
 scalar_t__ CONTEXT_CONTROL_CRYPTO_ALG_SHA1 ;
 scalar_t__ CONTEXT_CONTROL_CRYPTO_ALG_SHA224 ;
 scalar_t__ CONTEXT_CONTROL_CRYPTO_ALG_SHA256 ;
 scalar_t__ CONTEXT_CONTROL_CRYPTO_ALG_SHA384 ;
 scalar_t__ CONTEXT_CONTROL_CRYPTO_ALG_SHA512 ;
 void* CONTEXT_CONTROL_DIGEST_HMAC ;
 int MD5_DIGEST_SIZE ;
 int SHA1_DIGEST_SIZE ;
 int SHA224_DIGEST_SIZE ;
 int SHA256_DIGEST_SIZE ;
 int SHA384_DIGEST_SIZE ;
 int SHA512_DIGEST_SIZE ;
 struct safexcel_ahash_req* ahash_request_ctx (struct ahash_request*) ;
 struct safexcel_ahash_ctx* crypto_ahash_ctx (int ) ;
 int crypto_ahash_reqtfm (struct ahash_request*) ;
 int md5_zero_message_hash ;
 int memcpy (int ,int ,int ) ;
 int memset (int*,int ,int) ;
 int safexcel_ahash_enqueue (struct ahash_request*) ;
 int sha1_zero_message_hash ;
 int sha224_zero_message_hash ;
 int sha256_zero_message_hash ;
 int sha384_zero_message_hash ;
 int sha512_zero_message_hash ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int safexcel_ahash_final(struct ahash_request *areq)
{
 struct safexcel_ahash_req *req = ahash_request_ctx(areq);
 struct safexcel_ahash_ctx *ctx = crypto_ahash_ctx(crypto_ahash_reqtfm(areq));

 req->finish = 1;

 if (unlikely(!req->len && !areq->nbytes)) {





  if (ctx->alg == CONTEXT_CONTROL_CRYPTO_ALG_MD5)
   memcpy(areq->result, md5_zero_message_hash,
          MD5_DIGEST_SIZE);
  else if (ctx->alg == CONTEXT_CONTROL_CRYPTO_ALG_SHA1)
   memcpy(areq->result, sha1_zero_message_hash,
          SHA1_DIGEST_SIZE);
  else if (ctx->alg == CONTEXT_CONTROL_CRYPTO_ALG_SHA224)
   memcpy(areq->result, sha224_zero_message_hash,
          SHA224_DIGEST_SIZE);
  else if (ctx->alg == CONTEXT_CONTROL_CRYPTO_ALG_SHA256)
   memcpy(areq->result, sha256_zero_message_hash,
          SHA256_DIGEST_SIZE);
  else if (ctx->alg == CONTEXT_CONTROL_CRYPTO_ALG_SHA384)
   memcpy(areq->result, sha384_zero_message_hash,
          SHA384_DIGEST_SIZE);
  else if (ctx->alg == CONTEXT_CONTROL_CRYPTO_ALG_SHA512)
   memcpy(areq->result, sha512_zero_message_hash,
          SHA512_DIGEST_SIZE);

  return 0;
 } else if (unlikely(req->hmac &&
       (req->len == req->block_sz) &&
       !areq->nbytes)) {
  memset(req->cache, 0, req->block_sz);

  req->cache[0] = 0x80;

  if (req->len_is_le) {

   req->cache[req->block_sz-8] = (req->block_sz << 3) &
            255;
   req->cache[req->block_sz-7] = (req->block_sz >> 5);
  } else {

   req->cache[req->block_sz-2] = (req->block_sz >> 5);
   req->cache[req->block_sz-1] = (req->block_sz << 3) &
            255;
  }

  req->len += req->block_sz;


  req->hmac_zlen = 1;


  req->digest = CONTEXT_CONTROL_DIGEST_HMAC;
 } else if (req->hmac) {

  req->digest = CONTEXT_CONTROL_DIGEST_HMAC;
 }

 return safexcel_ahash_enqueue(areq);
}
