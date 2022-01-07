
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct safexcel_ahash_req {scalar_t__ cache; } ;
struct ahash_request {scalar_t__ nbytes; int src; } ;


 int E2BIG ;
 scalar_t__ HASH_CACHE_SIZE ;
 struct safexcel_ahash_req* ahash_request_ctx (struct ahash_request*) ;
 scalar_t__ safexcel_queued_len (struct safexcel_ahash_req*) ;
 int sg_nents (int ) ;
 int sg_pcopy_to_buffer (int ,int ,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static int safexcel_ahash_cache(struct ahash_request *areq)
{
 struct safexcel_ahash_req *req = ahash_request_ctx(areq);
 u64 cache_len;




 cache_len = safexcel_queued_len(req);





 if (cache_len + areq->nbytes <= HASH_CACHE_SIZE) {
  sg_pcopy_to_buffer(areq->src, sg_nents(areq->src),
       req->cache + cache_len,
       areq->nbytes, 0);
  return 0;
 }


 return -E2BIG;
}
