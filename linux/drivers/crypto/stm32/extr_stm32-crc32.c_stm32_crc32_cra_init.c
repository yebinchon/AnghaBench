
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_crc_ctx {int poly; int key; } ;
struct crypto_tfm {int dummy; } ;


 int CRC32_POLY_LE ;
 int CRC_INIT_DEFAULT ;
 struct stm32_crc_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int stm32_crc32_cra_init(struct crypto_tfm *tfm)
{
 struct stm32_crc_ctx *mctx = crypto_tfm_ctx(tfm);

 mctx->key = CRC_INIT_DEFAULT;
 mctx->poly = CRC32_POLY_LE;
 return 0;
}
