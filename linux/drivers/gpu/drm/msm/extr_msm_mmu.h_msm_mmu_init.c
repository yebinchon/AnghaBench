
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_mmu_funcs {int dummy; } ;
struct msm_mmu {struct msm_mmu_funcs const* funcs; struct device* dev; } ;
struct device {int dummy; } ;



__attribute__((used)) static inline void msm_mmu_init(struct msm_mmu *mmu, struct device *dev,
  const struct msm_mmu_funcs *funcs)
{
 mmu->dev = dev;
 mmu->funcs = funcs;
}
