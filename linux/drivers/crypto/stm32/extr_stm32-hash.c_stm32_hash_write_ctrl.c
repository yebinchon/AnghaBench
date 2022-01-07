
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_hash_request_ctx {int flags; int data_type; } ;
struct stm32_hash_dev {int flags; int dev; int req; } ;
struct stm32_hash_ctx {scalar_t__ keylen; } ;
struct crypto_ahash {int dummy; } ;


 int HASH_CR ;
 int HASH_CR_ALGO_MD5 ;
 int HASH_CR_ALGO_SHA1 ;
 int HASH_CR_ALGO_SHA224 ;
 int HASH_CR_ALGO_SHA256 ;
 int HASH_CR_DATATYPE_POS ;
 int HASH_CR_INIT ;
 int HASH_CR_LKEY ;
 int HASH_CR_MODE ;
 int HASH_DCIE ;
 int HASH_FLAGS_ALGO_MASK ;
 int HASH_FLAGS_HMAC ;
 int HASH_FLAGS_INIT ;




 int HASH_IMR ;
 scalar_t__ HASH_LONG_KEY ;
 struct stm32_hash_request_ctx* ahash_request_ctx (int ) ;
 struct stm32_hash_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (int ) ;
 int dev_dbg (int ,char*,int) ;
 int stm32_hash_write (struct stm32_hash_dev*,int ,int) ;

__attribute__((used)) static void stm32_hash_write_ctrl(struct stm32_hash_dev *hdev)
{
 struct stm32_hash_request_ctx *rctx = ahash_request_ctx(hdev->req);
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(hdev->req);
 struct stm32_hash_ctx *ctx = crypto_ahash_ctx(tfm);

 u32 reg = HASH_CR_INIT;

 if (!(hdev->flags & HASH_FLAGS_INIT)) {
  switch (rctx->flags & HASH_FLAGS_ALGO_MASK) {
  case 131:
   reg |= HASH_CR_ALGO_MD5;
   break;
  case 130:
   reg |= HASH_CR_ALGO_SHA1;
   break;
  case 129:
   reg |= HASH_CR_ALGO_SHA224;
   break;
  case 128:
   reg |= HASH_CR_ALGO_SHA256;
   break;
  default:
   reg |= HASH_CR_ALGO_MD5;
  }

  reg |= (rctx->data_type << HASH_CR_DATATYPE_POS);

  if (rctx->flags & HASH_FLAGS_HMAC) {
   hdev->flags |= HASH_FLAGS_HMAC;
   reg |= HASH_CR_MODE;
   if (ctx->keylen > HASH_LONG_KEY)
    reg |= HASH_CR_LKEY;
  }

  stm32_hash_write(hdev, HASH_IMR, HASH_DCIE);

  stm32_hash_write(hdev, HASH_CR, reg);

  hdev->flags |= HASH_FLAGS_INIT;

  dev_dbg(hdev->dev, "Write Control %x\n", reg);
 }
}
