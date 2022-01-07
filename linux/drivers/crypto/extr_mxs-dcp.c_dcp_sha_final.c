
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {scalar_t__ nbytes; int result; } ;


 int ahash_request_set_crypt (struct ahash_request*,int *,int ,int ) ;
 int dcp_sha_update_fx (struct ahash_request*,int) ;

__attribute__((used)) static int dcp_sha_final(struct ahash_request *req)
{
 ahash_request_set_crypt(req, ((void*)0), req->result, 0);
 req->nbytes = 0;
 return dcp_sha_update_fx(req, 1);
}
