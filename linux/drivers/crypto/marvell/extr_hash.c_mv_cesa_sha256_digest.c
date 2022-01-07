
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int dummy; } ;


 int mv_cesa_ahash_finup (struct ahash_request*) ;
 int mv_cesa_sha256_init (struct ahash_request*) ;

__attribute__((used)) static int mv_cesa_sha256_digest(struct ahash_request *req)
{
 int ret;

 ret = mv_cesa_sha256_init(req);
 if (ret)
  return ret;

 return mv_cesa_ahash_finup(req);
}
