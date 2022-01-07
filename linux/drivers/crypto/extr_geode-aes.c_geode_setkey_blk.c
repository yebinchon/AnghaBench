
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {TYPE_3__* blk; } ;
struct geode_aes_op {unsigned int keylen; TYPE_2__ fallback; int key; } ;
struct crypto_tfm {int crt_flags; } ;
struct TYPE_4__ {int crt_flags; } ;
struct TYPE_6__ {TYPE_1__ base; } ;


 unsigned int AES_KEYSIZE_128 ;
 unsigned int AES_KEYSIZE_192 ;
 unsigned int AES_KEYSIZE_256 ;
 int CRYPTO_TFM_REQ_MASK ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int CRYPTO_TFM_RES_MASK ;
 int EINVAL ;
 unsigned int crypto_blkcipher_setkey (TYPE_3__*,int const*,unsigned int) ;
 struct geode_aes_op* crypto_tfm_ctx (struct crypto_tfm*) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static int geode_setkey_blk(struct crypto_tfm *tfm, const u8 *key,
  unsigned int len)
{
 struct geode_aes_op *op = crypto_tfm_ctx(tfm);
 unsigned int ret;

 op->keylen = len;

 if (len == AES_KEYSIZE_128) {
  memcpy(op->key, key, len);
  return 0;
 }

 if (len != AES_KEYSIZE_192 && len != AES_KEYSIZE_256) {

  tfm->crt_flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
  return -EINVAL;
 }




 op->fallback.blk->base.crt_flags &= ~CRYPTO_TFM_REQ_MASK;
 op->fallback.blk->base.crt_flags |= (tfm->crt_flags & CRYPTO_TFM_REQ_MASK);

 ret = crypto_blkcipher_setkey(op->fallback.blk, key, len);
 if (ret) {
  tfm->crt_flags &= ~CRYPTO_TFM_RES_MASK;
  tfm->crt_flags |= (op->fallback.blk->base.crt_flags & CRYPTO_TFM_RES_MASK);
 }
 return ret;
}
