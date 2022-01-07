
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int dummy; } ;


 int safexcel_ahash_finup (struct ahash_request*) ;
 int safexcel_sha224_init (struct ahash_request*) ;

__attribute__((used)) static int safexcel_sha224_digest(struct ahash_request *areq)
{
 int ret = safexcel_sha224_init(areq);

 if (ret)
  return ret;

 return safexcel_ahash_finup(areq);
}
