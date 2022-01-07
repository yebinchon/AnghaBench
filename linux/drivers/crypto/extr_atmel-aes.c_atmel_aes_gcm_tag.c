
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_aes_gcm_ctx {int ghash; int j0; } ;
struct atmel_aes_dev {unsigned long flags; int ctx; } ;


 int AES_FLAGS_CTR ;
 int AES_FLAGS_GTAGEN ;
 int AES_FLAGS_OPMODE_MASK ;
 int AES_IDATAR (int ) ;
 struct atmel_aes_gcm_ctx* atmel_aes_gcm_ctx_cast (int ) ;
 int atmel_aes_gcm_finalize ;
 int atmel_aes_wait_for_data_ready (struct atmel_aes_dev*,int ) ;
 int atmel_aes_write_block (struct atmel_aes_dev*,int ,int ) ;
 int atmel_aes_write_ctrl (struct atmel_aes_dev*,int,int ) ;

__attribute__((used)) static int atmel_aes_gcm_tag(struct atmel_aes_dev *dd)
{
 struct atmel_aes_gcm_ctx *ctx = atmel_aes_gcm_ctx_cast(dd->ctx);
 unsigned long flags;





 flags = dd->flags;
 dd->flags &= ~(AES_FLAGS_OPMODE_MASK | AES_FLAGS_GTAGEN);
 dd->flags |= AES_FLAGS_CTR;
 atmel_aes_write_ctrl(dd, 0, ctx->j0);
 dd->flags = flags;

 atmel_aes_write_block(dd, AES_IDATAR(0), ctx->ghash);
 return atmel_aes_wait_for_data_ready(dd, atmel_aes_gcm_finalize);
}
