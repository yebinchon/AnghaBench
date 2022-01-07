
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ablk_ctx {scalar_t__ ciph_mode; int enckey_len; scalar_t__ rrkey; scalar_t__ key; } ;
struct _key_ctx {scalar_t__ key; } ;


 scalar_t__ CHCR_SCMD_CIPHER_MODE_AES_CBC ;
 int memcpy (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static int generate_copy_rrkey(struct ablk_ctx *ablkctx,
          struct _key_ctx *key_ctx)
{
 if (ablkctx->ciph_mode == CHCR_SCMD_CIPHER_MODE_AES_CBC) {
  memcpy(key_ctx->key, ablkctx->rrkey, ablkctx->enckey_len);
 } else {
  memcpy(key_ctx->key,
         ablkctx->key + (ablkctx->enckey_len >> 1),
         ablkctx->enckey_len >> 1);
  memcpy(key_ctx->key + (ablkctx->enckey_len >> 1),
         ablkctx->rrkey, ablkctx->enckey_len >> 1);
 }
 return 0;
}
