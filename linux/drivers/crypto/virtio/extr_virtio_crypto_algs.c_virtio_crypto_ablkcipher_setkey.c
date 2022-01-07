
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct virtio_crypto_ablkcipher_ctx {struct virtio_crypto* vcrypto; } ;
struct virtio_crypto {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;


 int ENODEV ;
 int VIRTIO_CRYPTO_SERVICE_CIPHER ;
 struct virtio_crypto_ablkcipher_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int pr_err (char*) ;
 int virtcrypto_dev_put (struct virtio_crypto*) ;
 struct virtio_crypto* virtcrypto_get_dev_node (int,int ,int ) ;
 int virtio_crypto_alg_ablkcipher_close_session (struct virtio_crypto_ablkcipher_ctx*,int) ;
 int virtio_crypto_alg_ablkcipher_init_sessions (struct virtio_crypto_ablkcipher_ctx*,int const*,unsigned int) ;
 int virtio_crypto_alg_validate_key (unsigned int,int *) ;
 int virtio_crypto_get_current_node () ;

__attribute__((used)) static int virtio_crypto_ablkcipher_setkey(struct crypto_ablkcipher *tfm,
      const uint8_t *key,
      unsigned int keylen)
{
 struct virtio_crypto_ablkcipher_ctx *ctx = crypto_ablkcipher_ctx(tfm);
 uint32_t alg;
 int ret;

 ret = virtio_crypto_alg_validate_key(keylen, &alg);
 if (ret)
  return ret;

 if (!ctx->vcrypto) {

  int node = virtio_crypto_get_current_node();
  struct virtio_crypto *vcrypto =
          virtcrypto_get_dev_node(node,
          VIRTIO_CRYPTO_SERVICE_CIPHER, alg);
  if (!vcrypto) {
   pr_err("virtio_crypto: Could not find a virtio device in the system or unsupported algo\n");
   return -ENODEV;
  }

  ctx->vcrypto = vcrypto;
 } else {

  virtio_crypto_alg_ablkcipher_close_session(ctx, 1);
  virtio_crypto_alg_ablkcipher_close_session(ctx, 0);
 }

 ret = virtio_crypto_alg_ablkcipher_init_sessions(ctx, key, keylen);
 if (ret) {
  virtcrypto_dev_put(ctx->vcrypto);
  ctx->vcrypto = ((void*)0);

  return ret;
 }

 return 0;
}
