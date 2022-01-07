
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct safexcel_ahash_req {scalar_t__ last_req; int finish; int len; } ;
struct ahash_request {scalar_t__ nbytes; } ;


 struct safexcel_ahash_req* ahash_request_ctx (struct ahash_request*) ;
 int safexcel_ahash_cache (struct ahash_request*) ;
 int safexcel_ahash_enqueue (struct ahash_request*) ;

__attribute__((used)) static int safexcel_ahash_update(struct ahash_request *areq)
{
 struct safexcel_ahash_req *req = ahash_request_ctx(areq);
 int ret;


 if (!areq->nbytes)
  return 0;


 ret = safexcel_ahash_cache(areq);


 req->len += areq->nbytes;





 if ((ret && !req->finish) || req->last_req)
  return safexcel_ahash_enqueue(areq);

 return 0;
}
