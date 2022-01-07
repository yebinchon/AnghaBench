
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int dummy; } ;


 int dcp_sha_finup (struct ahash_request*) ;
 int dcp_sha_init (struct ahash_request*) ;

__attribute__((used)) static int dcp_sha_digest(struct ahash_request *req)
{
 int ret;

 ret = dcp_sha_init(req);
 if (ret)
  return ret;

 return dcp_sha_finup(req);
}
