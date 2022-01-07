
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct crypt_config {int key_size; int key; int * key_string; TYPE_1__* iv_gen_ops; int flags; } ;
struct TYPE_2__ {int (* wipe ) (struct crypt_config*) ;} ;


 int DM_CRYPT_KEY_VALID ;
 int clear_bit (int ,int *) ;
 int crypt_setkey (struct crypt_config*) ;
 int get_random_bytes (int *,int) ;
 int kzfree (int *) ;
 int memset (int *,int ,int) ;
 int stub1 (struct crypt_config*) ;

__attribute__((used)) static int crypt_wipe_key(struct crypt_config *cc)
{
 int r;

 clear_bit(DM_CRYPT_KEY_VALID, &cc->flags);
 get_random_bytes(&cc->key, cc->key_size);


 if (cc->iv_gen_ops && cc->iv_gen_ops->wipe) {
  r = cc->iv_gen_ops->wipe(cc);
  if (r)
   return r;
 }

 kzfree(cc->key_string);
 cc->key_string = ((void*)0);
 r = crypt_setkey(cc);
 memset(&cc->key, 0, cc->key_size * sizeof(u8));

 return r;
}
