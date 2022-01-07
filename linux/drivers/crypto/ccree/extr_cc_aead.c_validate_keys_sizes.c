
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cc_aead_ctx {int enc_keylen; int auth_keylen; int auth_mode; scalar_t__ flow_mode; int drvdata; } ;


 int AES_KEYSIZE_128 ;
 int AES_KEYSIZE_192 ;
 int AES_KEYSIZE_256 ;
 int DES3_EDE_KEY_SIZE ;




 int EINVAL ;
 int ENOTSUPP ;
 scalar_t__ S_DIN_to_DES ;
 int dev_dbg (struct device*,char*,int,int) ;
 int dev_err (struct device*,char*,int) ;
 struct device* drvdata_to_dev (int ) ;

__attribute__((used)) static int validate_keys_sizes(struct cc_aead_ctx *ctx)
{
 struct device *dev = drvdata_to_dev(ctx->drvdata);

 dev_dbg(dev, "enc_keylen=%u  authkeylen=%u\n",
  ctx->enc_keylen, ctx->auth_keylen);

 switch (ctx->auth_mode) {
 case 130:
 case 129:
  break;
 case 128:
  if (ctx->auth_keylen != AES_KEYSIZE_128 &&
      ctx->auth_keylen != AES_KEYSIZE_192 &&
      ctx->auth_keylen != AES_KEYSIZE_256)
   return -ENOTSUPP;
  break;
 case 131:
  if (ctx->auth_keylen > 0)
   return -EINVAL;
  break;
 default:
  dev_err(dev, "Invalid auth_mode=%d\n", ctx->auth_mode);
  return -EINVAL;
 }

 if (ctx->flow_mode == S_DIN_to_DES) {
  if (ctx->enc_keylen != DES3_EDE_KEY_SIZE) {
   dev_err(dev, "Invalid cipher(3DES) key size: %u\n",
    ctx->enc_keylen);
   return -EINVAL;
  }
 } else {
  if (ctx->enc_keylen != AES_KEYSIZE_128 &&
      ctx->enc_keylen != AES_KEYSIZE_192 &&
      ctx->enc_keylen != AES_KEYSIZE_256) {
   dev_err(dev, "Invalid cipher(AES) key size: %u\n",
    ctx->enc_keylen);
   return -EINVAL;
  }
 }

 return 0;
}
