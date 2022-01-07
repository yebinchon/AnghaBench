
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mv_cesa_ahash_req {unsigned int cache_ptr; int cache; int state; int len; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;


 struct mv_cesa_ahash_req* ahash_request_ctx (struct ahash_request*) ;
 unsigned int crypto_ahash_blocksize (struct crypto_ahash*) ;
 unsigned int crypto_ahash_digestsize (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int memcpy (void*,int ,unsigned int) ;
 int memset (void*,int ,unsigned int) ;

__attribute__((used)) static int mv_cesa_ahash_export(struct ahash_request *req, void *hash,
    u64 *len, void *cache)
{
 struct crypto_ahash *ahash = crypto_ahash_reqtfm(req);
 struct mv_cesa_ahash_req *creq = ahash_request_ctx(req);
 unsigned int digsize = crypto_ahash_digestsize(ahash);
 unsigned int blocksize;

 blocksize = crypto_ahash_blocksize(ahash);

 *len = creq->len;
 memcpy(hash, creq->state, digsize);
 memset(cache, 0, blocksize);
 memcpy(cache, creq->cache, creq->cache_ptr);

 return 0;
}
