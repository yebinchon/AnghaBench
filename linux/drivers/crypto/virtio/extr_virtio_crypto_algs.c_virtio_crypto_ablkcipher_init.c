
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct virtio_crypto_sym_request {int dummy; } ;
struct TYPE_6__ {int * unprepare_request; int * prepare_request; int do_one_request; } ;
struct TYPE_5__ {TYPE_3__ op; } ;
struct virtio_crypto_ablkcipher_ctx {TYPE_2__ enginectx; struct crypto_tfm* tfm; } ;
struct TYPE_4__ {int reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; } ;


 struct virtio_crypto_ablkcipher_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int virtio_crypto_ablkcipher_crypt_req ;

__attribute__((used)) static int virtio_crypto_ablkcipher_init(struct crypto_tfm *tfm)
{
 struct virtio_crypto_ablkcipher_ctx *ctx = crypto_tfm_ctx(tfm);

 tfm->crt_ablkcipher.reqsize = sizeof(struct virtio_crypto_sym_request);
 ctx->tfm = tfm;

 ctx->enginectx.op.do_one_request = virtio_crypto_ablkcipher_crypt_req;
 ctx->enginectx.op.prepare_request = ((void*)0);
 ctx->enginectx.op.unprepare_request = ((void*)0);
 return 0;
}
