
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct p8_ghash_desc_ctx {int shash; scalar_t__ bytes; } ;


 int GHASH_DIGEST_SIZE ;
 int memset (int ,int ,int ) ;
 struct p8_ghash_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int p8_ghash_init(struct shash_desc *desc)
{
 struct p8_ghash_desc_ctx *dctx = shash_desc_ctx(desc);

 dctx->bytes = 0;
 memset(dctx->shash, 0, GHASH_DIGEST_SIZE);
 return 0;
}
