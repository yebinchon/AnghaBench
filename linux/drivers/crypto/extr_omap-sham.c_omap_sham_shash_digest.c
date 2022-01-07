
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct crypto_shash {int dummy; } ;
struct TYPE_4__ {struct crypto_shash* tfm; } ;


 int SHASH_DESC_ON_STACK (TYPE_1__*,struct crypto_shash*) ;
 int crypto_shash_digest (TYPE_1__*,int const*,unsigned int,int *) ;
 TYPE_1__* shash ;

__attribute__((used)) static int omap_sham_shash_digest(struct crypto_shash *tfm, u32 flags,
      const u8 *data, unsigned int len, u8 *out)
{
 SHASH_DESC_ON_STACK(shash, tfm);

 shash->tfm = tfm;

 return crypto_shash_digest(shash, data, len, out);
}
