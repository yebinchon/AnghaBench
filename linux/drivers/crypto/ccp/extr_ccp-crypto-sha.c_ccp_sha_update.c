
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int nbytes; } ;


 int ccp_do_sha_update (struct ahash_request*,int ,int ) ;

__attribute__((used)) static int ccp_sha_update(struct ahash_request *req)
{
 return ccp_do_sha_update(req, req->nbytes, 0);
}
