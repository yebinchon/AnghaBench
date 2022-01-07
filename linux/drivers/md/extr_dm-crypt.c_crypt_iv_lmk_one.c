
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct md5_state {int * hash; } ;
struct iv_lmk_private {int * seed; int hash_tfm; } ;
struct dm_crypt_request {int iv_sector; } ;
struct TYPE_7__ {struct iv_lmk_private lmk; } ;
struct crypt_config {int iv_size; TYPE_1__ iv_gen_private; } ;
typedef int buf ;
typedef scalar_t__ __le32 ;
struct TYPE_8__ {int tfm; } ;


 int LMK_SEED_SIZE ;
 int MD5_HASH_WORDS ;
 int SHASH_DESC_ON_STACK (TYPE_2__*,int ) ;
 int __cpu_to_le32s (int *) ;
 scalar_t__ cpu_to_le32 (int) ;
 int crypto_shash_export (TYPE_2__*,struct md5_state*) ;
 int crypto_shash_init (TYPE_2__*) ;
 int crypto_shash_update (TYPE_2__*,int *,int) ;
 TYPE_2__* desc ;
 int memcpy (int *,int **,int ) ;

__attribute__((used)) static int crypt_iv_lmk_one(struct crypt_config *cc, u8 *iv,
       struct dm_crypt_request *dmreq,
       u8 *data)
{
 struct iv_lmk_private *lmk = &cc->iv_gen_private.lmk;
 SHASH_DESC_ON_STACK(desc, lmk->hash_tfm);
 struct md5_state md5state;
 __le32 buf[4];
 int i, r;

 desc->tfm = lmk->hash_tfm;

 r = crypto_shash_init(desc);
 if (r)
  return r;

 if (lmk->seed) {
  r = crypto_shash_update(desc, lmk->seed, LMK_SEED_SIZE);
  if (r)
   return r;
 }


 r = crypto_shash_update(desc, data + 16, 16 * 31);
 if (r)
  return r;


 buf[0] = cpu_to_le32(dmreq->iv_sector & 0xFFFFFFFF);
 buf[1] = cpu_to_le32((((u64)dmreq->iv_sector >> 32) & 0x00FFFFFF) | 0x80000000);
 buf[2] = cpu_to_le32(4024);
 buf[3] = 0;
 r = crypto_shash_update(desc, (u8 *)buf, sizeof(buf));
 if (r)
  return r;


 r = crypto_shash_export(desc, &md5state);
 if (r)
  return r;

 for (i = 0; i < MD5_HASH_WORDS; i++)
  __cpu_to_le32s(&md5state.hash[i]);
 memcpy(iv, &md5state.hash, cc->iv_size);

 return 0;
}
