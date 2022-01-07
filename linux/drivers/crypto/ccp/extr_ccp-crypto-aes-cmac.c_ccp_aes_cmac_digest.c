
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int dummy; } ;


 int ccp_aes_cmac_finup (struct ahash_request*) ;
 int ccp_aes_cmac_init (struct ahash_request*) ;

__attribute__((used)) static int ccp_aes_cmac_digest(struct ahash_request *req)
{
 int ret;

 ret = ccp_aes_cmac_init(req);
 if (ret)
  return ret;

 return ccp_aes_cmac_finup(req);
}
