
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct exynos_rng_dev {scalar_t__ mem; } ;


 scalar_t__ readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 exynos_rng_readl(struct exynos_rng_dev *rng, u32 offset)
{
 return readl_relaxed(rng->mem + offset);
}
