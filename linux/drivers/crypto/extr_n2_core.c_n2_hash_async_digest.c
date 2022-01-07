
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct n2_hash_req_ctx {int u; } ;
struct n2_ahash_alg {int digest_size; int hw_op_hashsz; int auth_type; int hash_init; int hash_zero; } ;
struct TYPE_2__ {int tfm; } ;
struct ahash_request {scalar_t__ nbytes; int * result; TYPE_1__ base; } ;


 struct n2_hash_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 int memcpy (int *,int ,int) ;
 struct n2_ahash_alg* n2_ahash_alg (int ) ;
 int n2_do_async_digest (struct ahash_request*,int ,int,int,int *,unsigned long,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int n2_hash_async_digest(struct ahash_request *req)
{
 struct n2_ahash_alg *n2alg = n2_ahash_alg(req->base.tfm);
 struct n2_hash_req_ctx *rctx = ahash_request_ctx(req);
 int ds;

 ds = n2alg->digest_size;
 if (unlikely(req->nbytes == 0)) {
  memcpy(req->result, n2alg->hash_zero, ds);
  return 0;
 }
 memcpy(&rctx->u, n2alg->hash_init, n2alg->hw_op_hashsz);

 return n2_do_async_digest(req, n2alg->auth_type,
      n2alg->hw_op_hashsz, ds,
      &rctx->u, 0UL, 0);
}
