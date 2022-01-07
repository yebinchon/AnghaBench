
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct atmel_sha_reqctx {size_t* digcnt; } ;
struct atmel_sha_dev {int flags; int dev; int req; } ;


 int DIV_ROUND_UP (size_t,int) ;
 int EINPROGRESS ;
 int SHA_FLAGS_CPU ;
 int SHA_FLAGS_FINAL ;
 int SHA_REG_DIN (int) ;
 struct atmel_sha_reqctx* ahash_request_ctx (int ) ;
 int atmel_sha_write (struct atmel_sha_dev*,int ,int const) ;
 int atmel_sha_write_ctrl (struct atmel_sha_dev*,int ) ;
 int dev_dbg (int ,char*,size_t,size_t,size_t,int) ;

__attribute__((used)) static int atmel_sha_xmit_cpu(struct atmel_sha_dev *dd, const u8 *buf,
         size_t length, int final)
{
 struct atmel_sha_reqctx *ctx = ahash_request_ctx(dd->req);
 int count, len32;
 const u32 *buffer = (const u32 *)buf;

 dev_dbg(dd->dev, "xmit_cpu: digcnt: 0x%llx 0x%llx, length: %zd, final: %d\n",
  ctx->digcnt[1], ctx->digcnt[0], length, final);

 atmel_sha_write_ctrl(dd, 0);


 ctx->digcnt[0] += length;
 if (ctx->digcnt[0] < length)
  ctx->digcnt[1]++;

 if (final)
  dd->flags |= SHA_FLAGS_FINAL;

 len32 = DIV_ROUND_UP(length, sizeof(u32));

 dd->flags |= SHA_FLAGS_CPU;

 for (count = 0; count < len32; count++)
  atmel_sha_write(dd, SHA_REG_DIN(count), buffer[count]);

 return -EINPROGRESS;
}
