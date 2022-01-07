
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nitrox_aead_rctx {int nkreq; } ;
struct TYPE_2__ {int (* complete ) (TYPE_1__*,int) ;} ;
struct aead_request {TYPE_1__ base; } ;


 int EINVAL ;
 struct nitrox_aead_rctx* aead_request_ctx (struct aead_request*) ;
 int free_dst_sglist (int *) ;
 int free_src_sglist (int *) ;
 int pr_err_ratelimited (char*,int) ;
 int stub1 (TYPE_1__*,int) ;

__attribute__((used)) static void nitrox_aead_callback(void *arg, int err)
{
 struct aead_request *areq = arg;
 struct nitrox_aead_rctx *rctx = aead_request_ctx(areq);

 free_src_sglist(&rctx->nkreq);
 free_dst_sglist(&rctx->nkreq);
 if (err) {
  pr_err_ratelimited("request failed status 0x%0x\n", err);
  err = -EINVAL;
 }

 areq->base.complete(&areq->base, err);
}
