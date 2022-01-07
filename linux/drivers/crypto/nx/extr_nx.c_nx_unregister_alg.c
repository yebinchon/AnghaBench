
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_alg {int dummy; } ;


 int crypto_unregister_alg (struct crypto_alg*) ;
 scalar_t__ nx_check_props (int *,int ,int ) ;

__attribute__((used)) static void nx_unregister_alg(struct crypto_alg *alg, u32 fc, u32 mode)
{
 if (nx_check_props(((void*)0), fc, mode))
  crypto_unregister_alg(alg);
}
