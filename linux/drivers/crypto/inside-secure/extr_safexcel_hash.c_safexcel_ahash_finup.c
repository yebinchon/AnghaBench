
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct safexcel_ahash_req {int finish; } ;
struct ahash_request {int dummy; } ;


 struct safexcel_ahash_req* ahash_request_ctx (struct ahash_request*) ;
 int safexcel_ahash_final (struct ahash_request*) ;
 int safexcel_ahash_update (struct ahash_request*) ;

__attribute__((used)) static int safexcel_ahash_finup(struct ahash_request *areq)
{
 struct safexcel_ahash_req *req = ahash_request_ctx(areq);

 req->finish = 1;

 safexcel_ahash_update(areq);
 return safexcel_ahash_final(areq);
}
