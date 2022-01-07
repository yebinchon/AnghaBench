
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chcr_hctx_per_wr {int dummy; } ;
struct chcr_ahash_req_ctx {int hctx_wr; } ;


 int memset (int *,int ,int) ;

__attribute__((used)) static inline void chcr_init_hctx_per_wr(struct chcr_ahash_req_ctx *reqctx)
{
 memset(&reqctx->hctx_wr, 0, sizeof(struct chcr_hctx_per_wr));
}
