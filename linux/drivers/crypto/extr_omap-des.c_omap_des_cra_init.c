
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct omap_des_reqctx {int dummy; } ;
struct TYPE_5__ {int do_one_request; int * unprepare_request; int prepare_request; } ;
struct TYPE_6__ {TYPE_2__ op; } ;
struct omap_des_ctx {TYPE_3__ enginectx; } ;
struct TYPE_4__ {int reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; } ;


 struct omap_des_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int omap_des_crypt_req ;
 int omap_des_prepare_req ;
 int pr_debug (char*) ;

__attribute__((used)) static int omap_des_cra_init(struct crypto_tfm *tfm)
{
 struct omap_des_ctx *ctx = crypto_tfm_ctx(tfm);

 pr_debug("enter\n");

 tfm->crt_ablkcipher.reqsize = sizeof(struct omap_des_reqctx);

 ctx->enginectx.op.prepare_request = omap_des_prepare_req;
 ctx->enginectx.op.unprepare_request = ((void*)0);
 ctx->enginectx.op.do_one_request = omap_des_crypt_req;

 return 0;
}
