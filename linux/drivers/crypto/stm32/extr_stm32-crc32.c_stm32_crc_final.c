
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stm32_crc_desc_ctx {int partial; } ;
struct stm32_crc_ctx {scalar_t__ poly; } ;
struct shash_desc {int tfm; } ;


 scalar_t__ CRC32C_POLY_LE ;
 struct stm32_crc_ctx* crypto_shash_ctx (int ) ;
 int put_unaligned_le32 (int ,int *) ;
 struct stm32_crc_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int stm32_crc_final(struct shash_desc *desc, u8 *out)
{
 struct stm32_crc_desc_ctx *ctx = shash_desc_ctx(desc);
 struct stm32_crc_ctx *mctx = crypto_shash_ctx(desc->tfm);


 put_unaligned_le32(mctx->poly == CRC32C_POLY_LE ?
      ~ctx->partial : ctx->partial, out);

 return 0;
}
