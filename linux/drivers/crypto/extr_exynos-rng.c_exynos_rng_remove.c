
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int crypto_unregister_rng (int *) ;
 int exynos_rng_alg ;
 int * exynos_rng_dev ;

__attribute__((used)) static int exynos_rng_remove(struct platform_device *pdev)
{
 crypto_unregister_rng(&exynos_rng_alg);

 exynos_rng_dev = ((void*)0);

 return 0;
}
