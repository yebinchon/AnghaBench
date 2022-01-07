
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iv_lmk_private {int * seed; int hash_tfm; } ;
struct dm_target {char* error; } ;
struct TYPE_2__ {struct iv_lmk_private lmk; } ;
struct crypt_config {int sector_size; scalar_t__ key_parts; scalar_t__ tfms_count; TYPE_1__ iv_gen_private; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int LMK_SEED_SIZE ;
 int PTR_ERR (int ) ;
 int SECTOR_SHIFT ;
 int crypt_iv_lmk_dtr (struct crypt_config*) ;
 int crypto_alloc_shash (char*,int ,int ) ;
 int * kzalloc (int ,int ) ;

__attribute__((used)) static int crypt_iv_lmk_ctr(struct crypt_config *cc, struct dm_target *ti,
       const char *opts)
{
 struct iv_lmk_private *lmk = &cc->iv_gen_private.lmk;

 if (cc->sector_size != (1 << SECTOR_SHIFT)) {
  ti->error = "Unsupported sector size for LMK";
  return -EINVAL;
 }

 lmk->hash_tfm = crypto_alloc_shash("md5", 0, 0);
 if (IS_ERR(lmk->hash_tfm)) {
  ti->error = "Error initializing LMK hash";
  return PTR_ERR(lmk->hash_tfm);
 }


 if (cc->key_parts == cc->tfms_count) {
  lmk->seed = ((void*)0);
  return 0;
 }

 lmk->seed = kzalloc(LMK_SEED_SIZE, GFP_KERNEL);
 if (!lmk->seed) {
  crypt_iv_lmk_dtr(cc);
  ti->error = "Error kmallocing seed storage in LMK";
  return -ENOMEM;
 }

 return 0;
}
