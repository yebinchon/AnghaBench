
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct safexcel_ahash_req {int cache; int state_sz; int state; int digest; int processed; int len; } ;
struct safexcel_ahash_export_state {int cache; int state; int digest; int processed; int len; } ;
struct ahash_request {int dummy; } ;


 int HASH_CACHE_SIZE ;
 struct safexcel_ahash_req* ahash_request_ctx (struct ahash_request*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int safexcel_ahash_export(struct ahash_request *areq, void *out)
{
 struct safexcel_ahash_req *req = ahash_request_ctx(areq);
 struct safexcel_ahash_export_state *export = out;

 export->len = req->len;
 export->processed = req->processed;

 export->digest = req->digest;

 memcpy(export->state, req->state, req->state_sz);
 memcpy(export->cache, req->cache, HASH_CACHE_SIZE);

 return 0;
}
