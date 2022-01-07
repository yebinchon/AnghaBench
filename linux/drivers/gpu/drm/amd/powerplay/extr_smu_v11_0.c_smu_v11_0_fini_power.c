
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_power_context {scalar_t__ power_context_size; int * power_context; } ;
struct smu_context {int pm_enabled; struct smu_power_context smu_power; } ;


 int EINVAL ;
 int kfree (int *) ;

__attribute__((used)) static int smu_v11_0_fini_power(struct smu_context *smu)
{
 struct smu_power_context *smu_power = &smu->smu_power;

 if (!smu->pm_enabled)
  return 0;
 if (!smu_power->power_context || smu_power->power_context_size == 0)
  return -EINVAL;

 kfree(smu_power->power_context);
 smu_power->power_context = ((void*)0);
 smu_power->power_context_size = 0;

 return 0;
}
