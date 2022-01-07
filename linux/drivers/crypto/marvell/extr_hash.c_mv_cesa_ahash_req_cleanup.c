
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_cesa_ahash_req {scalar_t__ cache_ptr; int cache; int src_nents; scalar_t__ last_req; } ;
struct crypto_async_request {int dummy; } ;
struct ahash_request {scalar_t__ nbytes; int src; } ;


 struct ahash_request* ahash_request_cast (struct crypto_async_request*) ;
 struct mv_cesa_ahash_req* ahash_request_ctx (struct ahash_request*) ;
 int mv_cesa_ahash_cleanup (struct ahash_request*) ;
 int mv_cesa_ahash_last_cleanup (struct ahash_request*) ;
 int sg_pcopy_to_buffer (int ,int ,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void mv_cesa_ahash_req_cleanup(struct crypto_async_request *req)
{
 struct ahash_request *ahashreq = ahash_request_cast(req);
 struct mv_cesa_ahash_req *creq = ahash_request_ctx(ahashreq);

 if (creq->last_req)
  mv_cesa_ahash_last_cleanup(ahashreq);

 mv_cesa_ahash_cleanup(ahashreq);

 if (creq->cache_ptr)
  sg_pcopy_to_buffer(ahashreq->src, creq->src_nents,
       creq->cache,
       creq->cache_ptr,
       ahashreq->nbytes - creq->cache_ptr);
}
