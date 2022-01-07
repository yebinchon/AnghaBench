
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct safexcel_ahash_req {int state_sz; int state; int cache; int digest; int processed; int len; } ;
struct safexcel_ahash_export_state {int state; int cache; int digest; int processed; int len; } ;
struct ahash_request {int dummy; } ;


 int HASH_CACHE_SIZE ;
 struct safexcel_ahash_req* ahash_request_ctx (struct ahash_request*) ;
 int crypto_ahash_init (struct ahash_request*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int safexcel_ahash_import(struct ahash_request *areq, const void *in)
{
 struct safexcel_ahash_req *req = ahash_request_ctx(areq);
 const struct safexcel_ahash_export_state *export = in;
 int ret;

 ret = crypto_ahash_init(areq);
 if (ret)
  return ret;

 req->len = export->len;
 req->processed = export->processed;

 req->digest = export->digest;

 memcpy(req->cache, export->cache, HASH_CACHE_SIZE);
 memcpy(req->state, export->state, req->state_sz);

 return 0;
}
