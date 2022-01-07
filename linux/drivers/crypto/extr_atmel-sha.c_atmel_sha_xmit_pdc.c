
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atmel_sha_reqctx {size_t* digcnt; } ;
struct atmel_sha_dev {int flags; int dev; int req; } ;
typedef int dma_addr_t ;


 int DIV_ROUND_UP (size_t,int) ;
 int EINPROGRESS ;
 int SHA_FLAGS_DMA_ACTIVE ;
 int SHA_FLAGS_FINAL ;
 int SHA_PTCR ;
 int SHA_PTCR_TXTDIS ;
 int SHA_PTCR_TXTEN ;
 int SHA_TCR ;
 int SHA_TNCR ;
 int SHA_TNPR ;
 int SHA_TPR ;
 struct atmel_sha_reqctx* ahash_request_ctx (int ) ;
 int atmel_sha_write (struct atmel_sha_dev*,int ,int) ;
 int atmel_sha_write_ctrl (struct atmel_sha_dev*,int) ;
 int dev_dbg (int ,char*,size_t,size_t,size_t,int) ;

__attribute__((used)) static int atmel_sha_xmit_pdc(struct atmel_sha_dev *dd, dma_addr_t dma_addr1,
  size_t length1, dma_addr_t dma_addr2, size_t length2, int final)
{
 struct atmel_sha_reqctx *ctx = ahash_request_ctx(dd->req);
 int len32;

 dev_dbg(dd->dev, "xmit_pdc: digcnt: 0x%llx 0x%llx, length: %zd, final: %d\n",
  ctx->digcnt[1], ctx->digcnt[0], length1, final);

 len32 = DIV_ROUND_UP(length1, sizeof(u32));
 atmel_sha_write(dd, SHA_PTCR, SHA_PTCR_TXTDIS);
 atmel_sha_write(dd, SHA_TPR, dma_addr1);
 atmel_sha_write(dd, SHA_TCR, len32);

 len32 = DIV_ROUND_UP(length2, sizeof(u32));
 atmel_sha_write(dd, SHA_TNPR, dma_addr2);
 atmel_sha_write(dd, SHA_TNCR, len32);

 atmel_sha_write_ctrl(dd, 1);


 ctx->digcnt[0] += length1;
 if (ctx->digcnt[0] < length1)
  ctx->digcnt[1]++;

 if (final)
  dd->flags |= SHA_FLAGS_FINAL;

 dd->flags |= SHA_FLAGS_DMA_ACTIVE;


 atmel_sha_write(dd, SHA_PTCR, SHA_PTCR_TXTEN);

 return -EINPROGRESS;
}
