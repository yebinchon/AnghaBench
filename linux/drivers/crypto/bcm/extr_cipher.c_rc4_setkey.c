
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iproc_ctx_s {int enckeylen; int* enckey; int cipher_type; } ;
struct crypto_ablkcipher {int dummy; } ;


 int ARC4_MAX_KEY_SIZE ;
 int ARC4_STATE_SIZE ;
 int CIPHER_TYPE_INIT ;
 struct iproc_ctx_s* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;

__attribute__((used)) static int rc4_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
        unsigned int keylen)
{
 struct iproc_ctx_s *ctx = crypto_ablkcipher_ctx(cipher);
 int i;

 ctx->enckeylen = ARC4_MAX_KEY_SIZE + ARC4_STATE_SIZE;

 ctx->enckey[0] = 0x00;
 ctx->enckey[1] = 0x00;
 ctx->enckey[2] = 0x00;
 ctx->enckey[3] = 0x00;
 for (i = 0; i < ARC4_MAX_KEY_SIZE; i++)
  ctx->enckey[i + ARC4_STATE_SIZE] = key[i % keylen];

 ctx->cipher_type = CIPHER_TYPE_INIT;

 return 0;
}
