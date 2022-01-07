
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {void** token; int options; } ;
struct safexcel_command_desc {TYPE_1__ control_data; } ;
struct safexcel_cipher_ctx {scalar_t__ mode; scalar_t__ xcm; int alg; void* nonce; } ;


 int AES_BLOCK_SIZE ;
 scalar_t__ CONTEXT_CONTROL_CRYPTO_MODE_CTR_LOAD ;
 scalar_t__ CONTEXT_CONTROL_CRYPTO_MODE_ECB ;
 int DES3_EDE_BLOCK_SIZE ;
 int DES_BLOCK_SIZE ;
 int EIP197_OPTION_2_TOKEN_IV_CMD ;
 int EIP197_OPTION_4_TOKEN_IV_CMD ;
 scalar_t__ EIP197_XCM_MODE_CCM ;
 scalar_t__ EIP197_XCM_MODE_GCM ;



 void* cpu_to_be32 (int) ;
 int memcpy (void**,int*,int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static void safexcel_cipher_token(struct safexcel_cipher_ctx *ctx, u8 *iv,
      struct safexcel_command_desc *cdesc)
{
 u32 block_sz = 0;

 if (ctx->mode == CONTEXT_CONTROL_CRYPTO_MODE_CTR_LOAD) {
  cdesc->control_data.options |= EIP197_OPTION_4_TOKEN_IV_CMD;


  cdesc->control_data.token[0] = ctx->nonce;

  memcpy(&cdesc->control_data.token[1], iv, 8);

  cdesc->control_data.token[3] = cpu_to_be32(1);

  return;
 } else if (ctx->xcm == EIP197_XCM_MODE_GCM) {
  cdesc->control_data.options |= EIP197_OPTION_4_TOKEN_IV_CMD;


  memcpy(&cdesc->control_data.token[0], iv, 12);

  cdesc->control_data.token[3] = cpu_to_be32(1);

  return;
 } else if (ctx->xcm == EIP197_XCM_MODE_CCM) {
  cdesc->control_data.options |= EIP197_OPTION_4_TOKEN_IV_CMD;


  memcpy(&cdesc->control_data.token[0], iv, 15 - iv[0]);

  memset((u8 *)&cdesc->control_data.token[0] + 15 - iv[0],
         0, iv[0] + 1);

  return;
 }

 if (ctx->mode != CONTEXT_CONTROL_CRYPTO_MODE_ECB) {
  switch (ctx->alg) {
  case 128:
   block_sz = DES_BLOCK_SIZE;
   cdesc->control_data.options |= EIP197_OPTION_2_TOKEN_IV_CMD;
   break;
  case 130:
   block_sz = DES3_EDE_BLOCK_SIZE;
   cdesc->control_data.options |= EIP197_OPTION_2_TOKEN_IV_CMD;
   break;
  case 129:
   block_sz = AES_BLOCK_SIZE;
   cdesc->control_data.options |= EIP197_OPTION_4_TOKEN_IV_CMD;
   break;
  }
  memcpy(cdesc->control_data.token, iv, block_sz);
 }
}
