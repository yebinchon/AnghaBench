
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int tfm; } ;


 int crypto_free_shash (int ) ;
 int kfree (struct shash_desc*) ;

void i40iw_free_hash_desc(struct shash_desc *desc)
{
 if (desc) {
  crypto_free_shash(desc->tfm);
  kfree(desc);
 }
}
