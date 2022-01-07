
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_ablkcipher {int dummy; } ;
struct atmel_aes_reqctx {unsigned long mode; int lastc; } ;
struct atmel_aes_dev {int dummy; } ;
struct atmel_aes_base_ctx {int is_aead; int block_size; } ;
struct ablkcipher_request {int base; scalar_t__ nbytes; int src; int dst; } ;


 int AES_BLOCK_SIZE ;




 unsigned long AES_FLAGS_ENCRYPT ;
 unsigned long AES_FLAGS_OPMODE_MASK ;
 int CFB16_BLOCK_SIZE ;
 int CFB32_BLOCK_SIZE ;
 int CFB64_BLOCK_SIZE ;
 int CFB8_BLOCK_SIZE ;
 int ENODEV ;
 struct atmel_aes_reqctx* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 struct atmel_aes_dev* atmel_aes_find_dev (struct atmel_aes_base_ctx*) ;
 int atmel_aes_handle_queue (struct atmel_aes_dev*,int *) ;
 struct atmel_aes_base_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int crypto_ablkcipher_ivsize (struct crypto_ablkcipher*) ;
 struct crypto_ablkcipher* crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 int scatterwalk_map_and_copy (int ,int ,scalar_t__,int,int ) ;

__attribute__((used)) static int atmel_aes_crypt(struct ablkcipher_request *req, unsigned long mode)
{
 struct crypto_ablkcipher *ablkcipher = crypto_ablkcipher_reqtfm(req);
 struct atmel_aes_base_ctx *ctx = crypto_ablkcipher_ctx(ablkcipher);
 struct atmel_aes_reqctx *rctx;
 struct atmel_aes_dev *dd;

 switch (mode & AES_FLAGS_OPMODE_MASK) {
 case 128:
  ctx->block_size = CFB8_BLOCK_SIZE;
  break;

 case 131:
  ctx->block_size = CFB16_BLOCK_SIZE;
  break;

 case 130:
  ctx->block_size = CFB32_BLOCK_SIZE;
  break;

 case 129:
  ctx->block_size = CFB64_BLOCK_SIZE;
  break;

 default:
  ctx->block_size = AES_BLOCK_SIZE;
  break;
 }
 ctx->is_aead = 0;

 dd = atmel_aes_find_dev(ctx);
 if (!dd)
  return -ENODEV;

 rctx = ablkcipher_request_ctx(req);
 rctx->mode = mode;

 if (!(mode & AES_FLAGS_ENCRYPT) && (req->src == req->dst)) {
  int ivsize = crypto_ablkcipher_ivsize(ablkcipher);

  scatterwalk_map_and_copy(rctx->lastc, req->src,
   (req->nbytes - ivsize), ivsize, 0);
 }

 return atmel_aes_handle_queue(dd, &req->base);
}
