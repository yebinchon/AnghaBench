
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nitrox_kcrypt_request {int dummy; } ;
struct TYPE_3__ {struct nitrox_kcrypt_request nkreq; } ;
struct nitrox_rfc4106_rctx {TYPE_1__ base; } ;
struct TYPE_4__ {int (* complete ) (TYPE_2__*,int) ;} ;
struct aead_request {TYPE_2__ base; } ;


 int EINVAL ;
 struct nitrox_rfc4106_rctx* aead_request_ctx (struct aead_request*) ;
 int free_dst_sglist (struct nitrox_kcrypt_request*) ;
 int free_src_sglist (struct nitrox_kcrypt_request*) ;
 int pr_err_ratelimited (char*,int) ;
 int stub1 (TYPE_2__*,int) ;

__attribute__((used)) static void nitrox_rfc4106_callback(void *arg, int err)
{
 struct aead_request *areq = arg;
 struct nitrox_rfc4106_rctx *rctx = aead_request_ctx(areq);
 struct nitrox_kcrypt_request *nkreq = &rctx->base.nkreq;

 free_src_sglist(nkreq);
 free_dst_sglist(nkreq);
 if (err) {
  pr_err_ratelimited("request failed status 0x%0x\n", err);
  err = -EINVAL;
 }

 areq->base.complete(&areq->base, err);
}
