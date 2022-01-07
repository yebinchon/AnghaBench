
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_crypto_ablkcipher_ctx {int * vcrypto; } ;
struct crypto_tfm {int dummy; } ;


 struct virtio_crypto_ablkcipher_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int virtcrypto_dev_put (int *) ;
 int virtio_crypto_alg_ablkcipher_close_session (struct virtio_crypto_ablkcipher_ctx*,int) ;

__attribute__((used)) static void virtio_crypto_ablkcipher_exit(struct crypto_tfm *tfm)
{
 struct virtio_crypto_ablkcipher_ctx *ctx = crypto_tfm_ctx(tfm);

 if (!ctx->vcrypto)
  return;

 virtio_crypto_alg_ablkcipher_close_session(ctx, 1);
 virtio_crypto_alg_ablkcipher_close_session(ctx, 0);
 virtcrypto_dev_put(ctx->vcrypto);
 ctx->vcrypto = ((void*)0);
}
