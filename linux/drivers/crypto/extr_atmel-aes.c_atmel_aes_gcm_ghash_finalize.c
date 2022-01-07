
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atmel_aes_gcm_ctx {int (* ghash_resume ) (struct atmel_aes_dev*) ;int ghash_out; } ;
struct atmel_aes_dev {scalar_t__ datalen; int data; int (* resume ) (struct atmel_aes_dev*) ;int ctx; } ;


 scalar_t__ AES_BLOCK_SIZE ;
 int AES_GHASHR (int ) ;
 int AES_IDATAR (int ) ;
 int AES_IER ;
 int AES_INT_DATARDY ;
 int AES_ISR ;
 int EINPROGRESS ;
 struct atmel_aes_gcm_ctx* atmel_aes_gcm_ctx_cast (int ) ;
 int atmel_aes_read (struct atmel_aes_dev*,int ) ;
 int atmel_aes_read_block (struct atmel_aes_dev*,int ,int ) ;
 int atmel_aes_write (struct atmel_aes_dev*,int ,int) ;
 int atmel_aes_write_block (struct atmel_aes_dev*,int ,int) ;
 int stub1 (struct atmel_aes_dev*) ;

__attribute__((used)) static int atmel_aes_gcm_ghash_finalize(struct atmel_aes_dev *dd)
{
 struct atmel_aes_gcm_ctx *ctx = atmel_aes_gcm_ctx_cast(dd->ctx);
 u32 isr;


 while (dd->datalen > 0) {
  atmel_aes_write_block(dd, AES_IDATAR(0), dd->data);
  dd->data += 4;
  dd->datalen -= AES_BLOCK_SIZE;

  isr = atmel_aes_read(dd, AES_ISR);
  if (!(isr & AES_INT_DATARDY)) {
   dd->resume = atmel_aes_gcm_ghash_finalize;
   atmel_aes_write(dd, AES_IER, AES_INT_DATARDY);
   return -EINPROGRESS;
  }
 }


 atmel_aes_read_block(dd, AES_GHASHR(0), ctx->ghash_out);

 return ctx->ghash_resume(dd);
}
