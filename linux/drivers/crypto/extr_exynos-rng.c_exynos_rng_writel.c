
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct exynos_rng_dev {scalar_t__ mem; } ;


 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static void exynos_rng_writel(struct exynos_rng_dev *rng, u32 val, u32 offset)
{
 writel_relaxed(val, rng->mem + offset);
}
