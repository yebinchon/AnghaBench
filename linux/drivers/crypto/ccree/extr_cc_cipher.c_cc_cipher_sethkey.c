
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct device {int dummy; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct cc_hkey_info {unsigned int keylen; unsigned int hw_key1; unsigned int hw_key2; } ;
struct TYPE_5__ {void* slot; void* alg; } ;
struct TYPE_4__ {void* key2_slot; void* key1_slot; } ;
struct cc_cipher_ctx {unsigned int keylen; int key_type; TYPE_2__ cpp; int flow_mode; int cipher_mode; TYPE_3__* drvdata; TYPE_1__ hw; } ;
typedef int hki ;
struct TYPE_6__ {int hw_rev; } ;


 void* CC_CPP_AES ;
 void* CC_CPP_SM4 ;

 int CC_HW_REV_713 ;

 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int DRV_CIPHER_BITLOCKER ;
 int DRV_CIPHER_CBC ;
 int DRV_CIPHER_CTR ;
 int DRV_CIPHER_ESSIV ;
 int DRV_CIPHER_XTS ;
 int EINVAL ;
 void* END_OF_KEYS ;
 int S_DIN_to_AES ;
 int S_DIN_to_SM4 ;
 void* cc_slot_to_cpp_key (unsigned int) ;
 void* cc_slot_to_hw_key (unsigned int) ;
 int cc_slot_to_key_type (unsigned int) ;
 struct crypto_tfm* crypto_skcipher_tfm (struct crypto_skcipher*) ;
 int crypto_tfm_alg_name (struct crypto_tfm*) ;
 struct cc_cipher_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int crypto_tfm_set_flags (struct crypto_tfm*,int ) ;
 int dev_dbg (struct device*,char*,struct cc_cipher_ctx*,void*,...) ;
 int dev_err (struct device*,char*,...) ;
 struct device* drvdata_to_dev (TYPE_3__*) ;
 int dump_byte_array (char*,int *,unsigned int) ;
 int memcpy (struct cc_hkey_info*,int const*,unsigned int) ;
 scalar_t__ validate_keys_sizes (struct cc_cipher_ctx*,unsigned int) ;

__attribute__((used)) static int cc_cipher_sethkey(struct crypto_skcipher *sktfm, const u8 *key,
        unsigned int keylen)
{
 struct crypto_tfm *tfm = crypto_skcipher_tfm(sktfm);
 struct cc_cipher_ctx *ctx_p = crypto_tfm_ctx(tfm);
 struct device *dev = drvdata_to_dev(ctx_p->drvdata);
 struct cc_hkey_info hki;

 dev_dbg(dev, "Setting HW key in context @%p for %s. keylen=%u\n",
  ctx_p, crypto_tfm_alg_name(tfm), keylen);
 dump_byte_array("key", (u8 *)key, keylen);




 if (keylen != sizeof(hki)) {
  dev_err(dev, "Unsupported protected key size %d.\n", keylen);
  crypto_tfm_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }

 memcpy(&hki, key, keylen);




 keylen = hki.keylen;

 if (validate_keys_sizes(ctx_p, keylen)) {
  dev_err(dev, "Unsupported key size %d.\n", keylen);
  crypto_tfm_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }

 ctx_p->keylen = keylen;

 switch (cc_slot_to_key_type(hki.hw_key1)) {
 case 129:
  if (ctx_p->flow_mode == S_DIN_to_SM4) {
   dev_err(dev, "Only AES HW protected keys are supported\n");
   return -EINVAL;
  }

  ctx_p->hw.key1_slot = cc_slot_to_hw_key(hki.hw_key1);
  if (ctx_p->hw.key1_slot == END_OF_KEYS) {
   dev_err(dev, "Unsupported hw key1 number (%d)\n",
    hki.hw_key1);
   return -EINVAL;
  }

  if (ctx_p->cipher_mode == DRV_CIPHER_XTS ||
      ctx_p->cipher_mode == DRV_CIPHER_ESSIV ||
      ctx_p->cipher_mode == DRV_CIPHER_BITLOCKER) {
   if (hki.hw_key1 == hki.hw_key2) {
    dev_err(dev, "Illegal hw key numbers (%d,%d)\n",
     hki.hw_key1, hki.hw_key2);
    return -EINVAL;
   }

   ctx_p->hw.key2_slot = cc_slot_to_hw_key(hki.hw_key2);
   if (ctx_p->hw.key2_slot == END_OF_KEYS) {
    dev_err(dev, "Unsupported hw key2 number (%d)\n",
     hki.hw_key2);
    return -EINVAL;
   }
  }

  ctx_p->key_type = 129;
  dev_dbg(dev, "HW protected key  %d/%d set\n.",
   ctx_p->hw.key1_slot, ctx_p->hw.key2_slot);
  break;

 case 128:
  if (ctx_p->drvdata->hw_rev < CC_HW_REV_713) {
   dev_err(dev, "CPP keys not supported in this hardware revision.\n");
   return -EINVAL;
  }

  if (ctx_p->cipher_mode != DRV_CIPHER_CBC &&
      ctx_p->cipher_mode != DRV_CIPHER_CTR) {
   dev_err(dev, "CPP keys only supported in CBC or CTR modes.\n");
   return -EINVAL;
  }

  ctx_p->cpp.slot = cc_slot_to_cpp_key(hki.hw_key1);
  if (ctx_p->flow_mode == S_DIN_to_AES)
   ctx_p->cpp.alg = CC_CPP_AES;
  else
   ctx_p->cpp.alg = CC_CPP_SM4;
  ctx_p->key_type = 128;
  dev_dbg(dev, "policy protected key alg: %d slot: %d.\n",
   ctx_p->cpp.alg, ctx_p->cpp.slot);
  break;

 default:
  dev_err(dev, "Unsupported protected key (%d)\n", hki.hw_key1);
  return -EINVAL;
 }

 return 0;
}
