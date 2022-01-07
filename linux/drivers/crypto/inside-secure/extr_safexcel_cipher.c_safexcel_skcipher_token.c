
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct safexcel_token {int stat; int instructions; int packet_length; int opcode; } ;
struct TYPE_2__ {scalar_t__ token; } ;
struct safexcel_command_desc {TYPE_1__ control_data; } ;
struct safexcel_cipher_ctx {int dummy; } ;


 int EIP197_TOKEN_INS_LAST ;
 int EIP197_TOKEN_INS_TYPE_CRYPTO ;
 int EIP197_TOKEN_INS_TYPE_OUTPUT ;
 int EIP197_TOKEN_OPCODE_DIRECTION ;
 int EIP197_TOKEN_STAT_LAST_HASH ;
 int EIP197_TOKEN_STAT_LAST_PACKET ;
 int safexcel_cipher_token (struct safexcel_cipher_ctx*,int *,struct safexcel_command_desc*) ;

__attribute__((used)) static void safexcel_skcipher_token(struct safexcel_cipher_ctx *ctx, u8 *iv,
        struct safexcel_command_desc *cdesc,
        u32 length)
{
 struct safexcel_token *token;

 safexcel_cipher_token(ctx, iv, cdesc);


 token = (struct safexcel_token *)(cdesc->control_data.token + 4);

 token[0].opcode = EIP197_TOKEN_OPCODE_DIRECTION;
 token[0].packet_length = length;
 token[0].stat = EIP197_TOKEN_STAT_LAST_PACKET |
   EIP197_TOKEN_STAT_LAST_HASH;
 token[0].instructions = EIP197_TOKEN_INS_LAST |
    EIP197_TOKEN_INS_TYPE_CRYPTO |
    EIP197_TOKEN_INS_TYPE_OUTPUT;
}
