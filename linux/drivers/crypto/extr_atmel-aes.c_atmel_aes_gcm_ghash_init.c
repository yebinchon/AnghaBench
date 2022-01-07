
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_aes_gcm_ctx {scalar_t__ ghash_in; } ;
struct atmel_aes_dev {int total; int ctx; } ;


 int AES_AADLENR ;
 int AES_CLENR ;
 int AES_GHASHR (int ) ;
 struct atmel_aes_gcm_ctx* atmel_aes_gcm_ctx_cast (int ) ;
 int atmel_aes_gcm_ghash_finalize (struct atmel_aes_dev*) ;
 int atmel_aes_write (struct atmel_aes_dev*,int ,int ) ;
 int atmel_aes_write_block (struct atmel_aes_dev*,int ,scalar_t__) ;

__attribute__((used)) static int atmel_aes_gcm_ghash_init(struct atmel_aes_dev *dd)
{
 struct atmel_aes_gcm_ctx *ctx = atmel_aes_gcm_ctx_cast(dd->ctx);


 atmel_aes_write(dd, AES_AADLENR, dd->total);
 atmel_aes_write(dd, AES_CLENR, 0);


 if (ctx->ghash_in)
  atmel_aes_write_block(dd, AES_GHASHR(0), ctx->ghash_in);

 return atmel_aes_gcm_ghash_finalize(dd);
}
