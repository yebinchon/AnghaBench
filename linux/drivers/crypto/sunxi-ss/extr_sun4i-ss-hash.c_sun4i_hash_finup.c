
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_req_ctx {int flags; } ;
struct ahash_request {int dummy; } ;


 int SS_HASH_FINAL ;
 int SS_HASH_UPDATE ;
 struct sun4i_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 int sun4i_hash (struct ahash_request*) ;

int sun4i_hash_finup(struct ahash_request *areq)
{
 struct sun4i_req_ctx *op = ahash_request_ctx(areq);

 op->flags = SS_HASH_UPDATE | SS_HASH_FINAL;
 return sun4i_hash(areq);
}
