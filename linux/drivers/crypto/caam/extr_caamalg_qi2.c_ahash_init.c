
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct caam_hash_state {scalar_t__ buflen_1; scalar_t__ buflen_0; scalar_t__ buf_dma; scalar_t__ current_buf; scalar_t__ ctx_dma_len; scalar_t__ ctx_dma; int final; int finup; int update; } ;
struct ahash_request {int dummy; } ;


 int ahash_final_no_ctx ;
 int ahash_finup_first ;
 struct caam_hash_state* ahash_request_ctx (struct ahash_request*) ;
 int ahash_update_first ;

__attribute__((used)) static int ahash_init(struct ahash_request *req)
{
 struct caam_hash_state *state = ahash_request_ctx(req);

 state->update = ahash_update_first;
 state->finup = ahash_finup_first;
 state->final = ahash_final_no_ctx;

 state->ctx_dma = 0;
 state->ctx_dma_len = 0;
 state->current_buf = 0;
 state->buf_dma = 0;
 state->buflen_0 = 0;
 state->buflen_1 = 0;

 return 0;
}
