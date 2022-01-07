
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct shash_alg {int dummy; } ;


 int crypto_unregister_shash (struct shash_alg*) ;
 scalar_t__ nx_check_prop (int *,int ,int ,int) ;
 scalar_t__ nx_check_props (int *,int ,int ) ;

__attribute__((used)) static void nx_unregister_shash(struct shash_alg *alg, u32 fc, u32 mode,
    int slot)
{
 if (slot >= 0 ? nx_check_prop(((void*)0), fc, mode, slot) :
   nx_check_props(((void*)0), fc, mode))
  crypto_unregister_shash(alg);
}
