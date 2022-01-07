
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int dummy; } ;


 int ahash_final (struct ahash_request*) ;
 int ahash_sha256_init (struct ahash_request*) ;
 int ahash_update (struct ahash_request*) ;

__attribute__((used)) static int ahash_sha256_digest(struct ahash_request *req)
{
 int ret2, ret1;

 ret1 = ahash_sha256_init(req);
 if (ret1)
  goto out;

 ret1 = ahash_update(req);
 ret2 = ahash_final(req);

out:
 return ret1 ? ret1 : ret2;
}
