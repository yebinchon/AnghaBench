
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_shash {int dummy; } ;


 int crypto_free_shash (struct crypto_shash*) ;

__attribute__((used)) static inline void chcr_free_shash(struct crypto_shash *base_hash)
{
  crypto_free_shash(base_hash);
}
