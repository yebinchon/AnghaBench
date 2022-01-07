
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
struct cc_aead_ctx {unsigned int authsize; int flow_mode; int cipher_mode; int drvdata; } ;
struct aead_request {unsigned int cryptlen; } ;
struct aead_req_ctx {unsigned int assoclen; int is_single_pass; int plaintext_authenticate_only; } ;
typedef enum drv_crypto_direction { ____Placeholder_drv_crypto_direction } drv_crypto_direction ;


 int AES_BLOCK_SIZE ;
 int DES_BLOCK_SIZE ;
 int DRV_CIPHER_CBC ;
 int DRV_CIPHER_CCM ;
 int DRV_CIPHER_CTR ;
 int DRV_CIPHER_GCTR ;
 int DRV_CRYPTO_DIRECTION_DECRYPT ;
 int EINVAL ;
 int IS_ALIGNED (unsigned int,int) ;


 struct aead_req_ctx* aead_request_ctx (struct aead_request*) ;
 int dev_err (struct device*,char*,int) ;
 struct device* drvdata_to_dev (int ) ;

__attribute__((used)) static int validate_data_size(struct cc_aead_ctx *ctx,
         enum drv_crypto_direction direct,
         struct aead_request *req)
{
 struct aead_req_ctx *areq_ctx = aead_request_ctx(req);
 struct device *dev = drvdata_to_dev(ctx->drvdata);
 unsigned int assoclen = areq_ctx->assoclen;
 unsigned int cipherlen = (direct == DRV_CRYPTO_DIRECTION_DECRYPT) ?
   (req->cryptlen - ctx->authsize) : req->cryptlen;

 if (direct == DRV_CRYPTO_DIRECTION_DECRYPT &&
     req->cryptlen < ctx->authsize)
  goto data_size_err;

 areq_ctx->is_single_pass = 1;

 switch (ctx->flow_mode) {
 case 129:
  if (ctx->cipher_mode == DRV_CIPHER_CBC &&
      !IS_ALIGNED(cipherlen, AES_BLOCK_SIZE))
   goto data_size_err;
  if (ctx->cipher_mode == DRV_CIPHER_CCM)
   break;
  if (ctx->cipher_mode == DRV_CIPHER_GCTR) {
   if (areq_ctx->plaintext_authenticate_only)
    areq_ctx->is_single_pass = 0;
   break;
  }

  if (!IS_ALIGNED(assoclen, sizeof(u32)))
   areq_ctx->is_single_pass = 0;

  if (ctx->cipher_mode == DRV_CIPHER_CTR &&
      !IS_ALIGNED(cipherlen, sizeof(u32)))
   areq_ctx->is_single_pass = 0;

  break;
 case 128:
  if (!IS_ALIGNED(cipherlen, DES_BLOCK_SIZE))
   goto data_size_err;
  if (!IS_ALIGNED(assoclen, DES_BLOCK_SIZE))
   areq_ctx->is_single_pass = 0;
  break;
 default:
  dev_err(dev, "Unexpected flow mode (%d)\n", ctx->flow_mode);
  goto data_size_err;
 }

 return 0;

data_size_err:
 return -EINVAL;
}
