
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct device {int dummy; } ;
struct crypto_authenc_keys {int enckeylen; int authkeylen; int * authkey; int * enckey; } ;
struct crypto_aead {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_crypto_req {int dummy; } ;
struct TYPE_3__ {int xcbc_keys; } ;
struct TYPE_4__ {TYPE_1__ xcbc; } ;
struct cc_aead_ctx {int auth_mode; int enc_keylen; int auth_keylen; scalar_t__ cipher_mode; int drvdata; TYPE_2__ auth_state; int enckey; int ctr_nonce; } ;


 int AES_MIN_KEY_SIZE ;
 scalar_t__ CC_AES_KEY_SIZE_MAX ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int CTR_RFC3686_NONCE_SIZE ;
 scalar_t__ DRV_CIPHER_CTR ;




 int EINVAL ;
 int ENOTSUPP ;
 int MAX_AEAD_SETKEY_SEQ ;
 int cc_get_plain_hmac_key (struct crypto_aead*,int const*,int) ;
 int cc_send_sync_request (int ,struct cc_crypto_req*,struct cc_hw_desc*,unsigned int) ;
 struct cc_aead_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_set_flags (struct crypto_aead*,int ) ;
 int crypto_aead_tfm (struct crypto_aead*) ;
 int crypto_authenc_extractkeys (struct crypto_authenc_keys*,int const*,unsigned int) ;
 int crypto_tfm_alg_name (int ) ;
 int dev_dbg (struct device*,char*,struct cc_aead_ctx*,int ,int const*,unsigned int) ;
 int dev_err (struct device*,char*,int) ;
 struct device* drvdata_to_dev (int ) ;
 unsigned int hmac_setkey (struct cc_hw_desc*,struct cc_aead_ctx*) ;
 int memcpy (int ,int const*,int) ;
 int memset (int ,int ,scalar_t__) ;
 int validate_keys_sizes (struct cc_aead_ctx*) ;
 unsigned int xcbc_setkey (struct cc_hw_desc*,struct cc_aead_ctx*) ;

__attribute__((used)) static int cc_aead_setkey(struct crypto_aead *tfm, const u8 *key,
     unsigned int keylen)
{
 struct cc_aead_ctx *ctx = crypto_aead_ctx(tfm);
 struct cc_crypto_req cc_req = {};
 struct cc_hw_desc desc[MAX_AEAD_SETKEY_SEQ];
 unsigned int seq_len = 0;
 struct device *dev = drvdata_to_dev(ctx->drvdata);
 const u8 *enckey, *authkey;
 int rc;

 dev_dbg(dev, "Setting key in context @%p for %s. key=%p keylen=%u\n",
  ctx, crypto_tfm_alg_name(crypto_aead_tfm(tfm)), key, keylen);



 if (ctx->auth_mode != 131) {
  struct crypto_authenc_keys keys;

  rc = crypto_authenc_extractkeys(&keys, key, keylen);
  if (rc)
   goto badkey;
  enckey = keys.enckey;
  authkey = keys.authkey;
  ctx->enc_keylen = keys.enckeylen;
  ctx->auth_keylen = keys.authkeylen;

  if (ctx->cipher_mode == DRV_CIPHER_CTR) {

   rc = -EINVAL;
   if (ctx->enc_keylen <
       (AES_MIN_KEY_SIZE + CTR_RFC3686_NONCE_SIZE))
    goto badkey;



   memcpy(ctx->ctr_nonce, enckey + ctx->enc_keylen -
          CTR_RFC3686_NONCE_SIZE, CTR_RFC3686_NONCE_SIZE);

   ctx->enc_keylen -= CTR_RFC3686_NONCE_SIZE;
  }
 } else {
  enckey = key;
  authkey = ((void*)0);
  ctx->enc_keylen = keylen;
  ctx->auth_keylen = 0;
 }

 rc = validate_keys_sizes(ctx);
 if (rc)
  goto badkey;




 memcpy(ctx->enckey, enckey, ctx->enc_keylen);
 if (ctx->enc_keylen == 24)
  memset(ctx->enckey + 24, 0, CC_AES_KEY_SIZE_MAX - 24);
 if (ctx->auth_mode == 128) {
  memcpy(ctx->auth_state.xcbc.xcbc_keys, authkey,
         ctx->auth_keylen);
 } else if (ctx->auth_mode != 131) {
  rc = cc_get_plain_hmac_key(tfm, authkey, ctx->auth_keylen);
  if (rc)
   goto badkey;
 }



 switch (ctx->auth_mode) {
 case 130:
 case 129:
  seq_len = hmac_setkey(desc, ctx);
  break;
 case 128:
  seq_len = xcbc_setkey(desc, ctx);
  break;
 case 131:
  break;
 default:
  dev_err(dev, "Unsupported authenc (%d)\n", ctx->auth_mode);
  rc = -ENOTSUPP;
  goto badkey;
 }



 if (seq_len > 0) {
  rc = cc_send_sync_request(ctx->drvdata, &cc_req, desc, seq_len);
  if (rc) {
   dev_err(dev, "send_request() failed (rc=%d)\n", rc);
   goto setkey_error;
  }
 }


 return rc;

badkey:
 crypto_aead_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);

setkey_error:
 return rc;
}
