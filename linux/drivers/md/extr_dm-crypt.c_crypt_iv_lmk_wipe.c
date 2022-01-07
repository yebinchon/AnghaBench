
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iv_lmk_private {scalar_t__ seed; } ;
struct TYPE_2__ {struct iv_lmk_private lmk; } ;
struct crypt_config {TYPE_1__ iv_gen_private; } ;


 int LMK_SEED_SIZE ;
 int memset (scalar_t__,int ,int ) ;

__attribute__((used)) static int crypt_iv_lmk_wipe(struct crypt_config *cc)
{
 struct iv_lmk_private *lmk = &cc->iv_gen_private.lmk;

 if (lmk->seed)
  memset(lmk->seed, 0, LMK_SEED_SIZE);

 return 0;
}
