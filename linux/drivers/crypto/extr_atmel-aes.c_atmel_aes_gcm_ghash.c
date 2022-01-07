
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atmel_aes_gcm_ctx {int ghash_resume; int * ghash_out; int const* ghash_in; } ;
struct atmel_aes_dev {size_t datalen; int * data; int ctx; } ;
typedef int atmel_aes_fn_t ;


 struct atmel_aes_gcm_ctx* atmel_aes_gcm_ctx_cast (int ) ;
 int atmel_aes_gcm_ghash_init ;
 int atmel_aes_wait_for_data_ready (struct atmel_aes_dev*,int ) ;
 int atmel_aes_write_ctrl (struct atmel_aes_dev*,int,int *) ;

__attribute__((used)) static int atmel_aes_gcm_ghash(struct atmel_aes_dev *dd,
          const u32 *data, size_t datalen,
          const u32 *ghash_in, u32 *ghash_out,
          atmel_aes_fn_t resume)
{
 struct atmel_aes_gcm_ctx *ctx = atmel_aes_gcm_ctx_cast(dd->ctx);

 dd->data = (u32 *)data;
 dd->datalen = datalen;
 ctx->ghash_in = ghash_in;
 ctx->ghash_out = ghash_out;
 ctx->ghash_resume = resume;

 atmel_aes_write_ctrl(dd, 0, ((void*)0));
 return atmel_aes_wait_for_data_ready(dd, atmel_aes_gcm_ghash_init);
}
