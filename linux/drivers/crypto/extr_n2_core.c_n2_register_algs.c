
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_CIPHER_TMPLS ;
 int NUM_HASH_TMPLS ;
 int __n2_register_one_ahash (int *) ;
 int __n2_register_one_cipher (int *) ;
 int __n2_unregister_algs () ;
 int algs_registered ;
 int * cipher_tmpls ;
 int * hash_tmpls ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spu_lock ;

__attribute__((used)) static int n2_register_algs(void)
{
 int i, err = 0;

 mutex_lock(&spu_lock);
 if (algs_registered++)
  goto out;

 for (i = 0; i < NUM_HASH_TMPLS; i++) {
  err = __n2_register_one_ahash(&hash_tmpls[i]);
  if (err) {
   __n2_unregister_algs();
   goto out;
  }
 }
 for (i = 0; i < NUM_CIPHER_TMPLS; i++) {
  err = __n2_register_one_cipher(&cipher_tmpls[i]);
  if (err) {
   __n2_unregister_algs();
   goto out;
  }
 }

out:
 mutex_unlock(&spu_lock);
 return err;
}
