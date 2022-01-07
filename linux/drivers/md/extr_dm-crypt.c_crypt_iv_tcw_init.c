
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iv_tcw_private {int whitening; int iv_seed; } ;
struct TYPE_2__ {struct iv_tcw_private tcw; } ;
struct crypt_config {int key_size; int iv_size; int * key; TYPE_1__ iv_gen_private; } ;


 int TCW_WHITENING_SIZE ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static int crypt_iv_tcw_init(struct crypt_config *cc)
{
 struct iv_tcw_private *tcw = &cc->iv_gen_private.tcw;
 int key_offset = cc->key_size - cc->iv_size - TCW_WHITENING_SIZE;

 memcpy(tcw->iv_seed, &cc->key[key_offset], cc->iv_size);
 memcpy(tcw->whitening, &cc->key[key_offset + cc->iv_size],
        TCW_WHITENING_SIZE);

 return 0;
}
