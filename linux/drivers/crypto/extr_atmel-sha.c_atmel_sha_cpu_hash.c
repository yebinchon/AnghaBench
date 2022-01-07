
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atmel_sha_reqctx {int flags; int block_size; } ;
struct atmel_sha_dev {int tmp; struct ahash_request* req; } ;
struct ahash_request {int dummy; } ;
typedef int atmel_sha_fn_t ;


 int EINVAL ;
 scalar_t__ IS_ALIGNED (unsigned int,int ) ;
 int SHA_BCR ;
 int SHA_CR ;
 int SHA_CR_FIRST ;
 int SHA_FLAGS_ALGO_MASK ;
 int SHA_MR ;
 int SHA_MR_MODE_AUTO ;
 int SHA_MSR ;
 struct atmel_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int atmel_sha_complete (struct atmel_sha_dev*,int ) ;
 int atmel_sha_cpu_start (struct atmel_sha_dev*,int *,unsigned int,int,int,int ) ;
 int atmel_sha_write (struct atmel_sha_dev*,int ,int) ;
 int sg_init_one (int *,void const*,unsigned int) ;

__attribute__((used)) static int atmel_sha_cpu_hash(struct atmel_sha_dev *dd,
         const void *data, unsigned int datalen,
         bool auto_padding,
         atmel_sha_fn_t resume)
{
 struct ahash_request *req = dd->req;
 struct atmel_sha_reqctx *ctx = ahash_request_ctx(req);
 u32 msglen = (auto_padding) ? datalen : 0;
 u32 mr = SHA_MR_MODE_AUTO;

 if (!(IS_ALIGNED(datalen, ctx->block_size) || auto_padding))
  return atmel_sha_complete(dd, -EINVAL);

 mr |= (ctx->flags & SHA_FLAGS_ALGO_MASK);
 atmel_sha_write(dd, SHA_MR, mr);
 atmel_sha_write(dd, SHA_MSR, msglen);
 atmel_sha_write(dd, SHA_BCR, msglen);
 atmel_sha_write(dd, SHA_CR, SHA_CR_FIRST);

 sg_init_one(&dd->tmp, data, datalen);
 return atmel_sha_cpu_start(dd, &dd->tmp, datalen, 0, 1, resume);
}
