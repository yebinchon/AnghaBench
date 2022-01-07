
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iv_lmk_private {int hash_tfm; scalar_t__ seed; } ;
struct TYPE_2__ {struct iv_lmk_private lmk; } ;
struct crypt_config {int key_size; int key_parts; int tfms_count; scalar_t__ key; TYPE_1__ iv_gen_private; } ;


 int crypto_shash_digestsize (int ) ;
 int memcpy (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static int crypt_iv_lmk_init(struct crypt_config *cc)
{
 struct iv_lmk_private *lmk = &cc->iv_gen_private.lmk;
 int subkey_size = cc->key_size / cc->key_parts;


 if (lmk->seed)
  memcpy(lmk->seed, cc->key + (cc->tfms_count * subkey_size),
         crypto_shash_digestsize(lmk->hash_tfm));

 return 0;
}
