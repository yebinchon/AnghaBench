
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct caam_hash_state {int (* final ) (struct ahash_request*) ;} ;
struct ahash_request {int dummy; } ;


 struct caam_hash_state* ahash_request_ctx (struct ahash_request*) ;
 int stub1 (struct ahash_request*) ;

__attribute__((used)) static int ahash_final(struct ahash_request *req)
{
 struct caam_hash_state *state = ahash_request_ctx(req);

 return state->final(req);
}
