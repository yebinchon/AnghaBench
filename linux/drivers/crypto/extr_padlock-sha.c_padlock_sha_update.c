
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
struct padlock_sha_desc {int fallback; } ;


 int crypto_shash_update (int *,int const*,unsigned int) ;
 struct padlock_sha_desc* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int padlock_sha_update(struct shash_desc *desc,
         const u8 *data, unsigned int length)
{
 struct padlock_sha_desc *dctx = shash_desc_ctx(desc);

 return crypto_shash_update(&dctx->fallback, data, length);
}
