
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct scatterlist {int dummy; } ;
struct atmel_aes_gcm_ctx {scalar_t__ textlen; int dst; int src; } ;
struct TYPE_2__ {scalar_t__ has_dualbuff; } ;
struct atmel_aes_dev {scalar_t__ datalen; int data; int (* resume ) (struct atmel_aes_dev*) ;TYPE_1__ caps; int areq; int ctx; } ;
struct aead_request {int assoclen; int dst; int src; } ;


 scalar_t__ AES_BLOCK_SIZE ;
 int AES_IDATAR (int ) ;
 int AES_IER ;
 int AES_INT_DATARDY ;
 int AES_ISR ;
 int AES_MR ;
 int AES_MR_DUALBUFF ;
 int AES_MR_SMOD_IDATAR0 ;
 int AES_MR_SMOD_MASK ;
 scalar_t__ ATMEL_AES_DMA_THRESHOLD ;
 int EINPROGRESS ;
 struct aead_request* aead_request_cast (int ) ;
 int atmel_aes_cpu_start (struct atmel_aes_dev*,struct scatterlist*,struct scatterlist*,scalar_t__,int (*) (struct atmel_aes_dev*)) ;
 int atmel_aes_dma_start (struct atmel_aes_dev*,struct scatterlist*,struct scatterlist*,scalar_t__,int (*) (struct atmel_aes_dev*)) ;
 struct atmel_aes_gcm_ctx* atmel_aes_gcm_ctx_cast (int ) ;
 int atmel_aes_gcm_tag_init (struct atmel_aes_dev*) ;
 int atmel_aes_read (struct atmel_aes_dev*,int ) ;
 int atmel_aes_write (struct atmel_aes_dev*,int ,int) ;
 int atmel_aes_write_block (struct atmel_aes_dev*,int ,int) ;
 struct scatterlist* scatterwalk_ffwd (int ,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int atmel_aes_gcm_data(struct atmel_aes_dev *dd)
{
 struct atmel_aes_gcm_ctx *ctx = atmel_aes_gcm_ctx_cast(dd->ctx);
 struct aead_request *req = aead_request_cast(dd->areq);
 bool use_dma = (ctx->textlen >= ATMEL_AES_DMA_THRESHOLD);
 struct scatterlist *src, *dst;
 u32 isr, mr;


 while (dd->datalen > 0) {
  atmel_aes_write_block(dd, AES_IDATAR(0), dd->data);
  dd->data += 4;
  dd->datalen -= AES_BLOCK_SIZE;

  isr = atmel_aes_read(dd, AES_ISR);
  if (!(isr & AES_INT_DATARDY)) {
   dd->resume = atmel_aes_gcm_data;
   atmel_aes_write(dd, AES_IER, AES_INT_DATARDY);
   return -EINPROGRESS;
  }
 }


 if (unlikely(ctx->textlen == 0))
  return atmel_aes_gcm_tag_init(dd);


 src = scatterwalk_ffwd(ctx->src, req->src, req->assoclen);
 dst = ((req->src == req->dst) ? src :
        scatterwalk_ffwd(ctx->dst, req->dst, req->assoclen));

 if (use_dma) {

  mr = atmel_aes_read(dd, AES_MR);
  mr &= ~(AES_MR_SMOD_MASK | AES_MR_DUALBUFF);
  mr |= AES_MR_SMOD_IDATAR0;
  if (dd->caps.has_dualbuff)
   mr |= AES_MR_DUALBUFF;
  atmel_aes_write(dd, AES_MR, mr);

  return atmel_aes_dma_start(dd, src, dst, ctx->textlen,
        atmel_aes_gcm_tag_init);
 }

 return atmel_aes_cpu_start(dd, src, dst, ctx->textlen,
       atmel_aes_gcm_tag_init);
}
