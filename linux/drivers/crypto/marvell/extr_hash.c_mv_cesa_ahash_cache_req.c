
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_cesa_ahash_req {scalar_t__ cache_ptr; scalar_t__ cache; int src_nents; int last_req; } ;
struct ahash_request {scalar_t__ nbytes; int src; } ;


 scalar_t__ CESA_MAX_HASH_BLOCK_SIZE ;
 struct mv_cesa_ahash_req* ahash_request_ctx (struct ahash_request*) ;
 int sg_pcopy_to_buffer (int ,int ,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static bool mv_cesa_ahash_cache_req(struct ahash_request *req)
{
 struct mv_cesa_ahash_req *creq = ahash_request_ctx(req);
 bool cached = 0;

 if (creq->cache_ptr + req->nbytes < CESA_MAX_HASH_BLOCK_SIZE && !creq->last_req) {
  cached = 1;

  if (!req->nbytes)
   return cached;

  sg_pcopy_to_buffer(req->src, creq->src_nents,
       creq->cache + creq->cache_ptr,
       req->nbytes, 0);

  creq->cache_ptr += req->nbytes;
 }

 return cached;
}
