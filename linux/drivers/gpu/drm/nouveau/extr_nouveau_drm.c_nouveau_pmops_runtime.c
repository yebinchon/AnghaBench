
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ nouveau_is_optimus () ;
 scalar_t__ nouveau_is_v1_dsm () ;
 int nouveau_runtime_pm ;

bool
nouveau_pmops_runtime(void)
{
 if (nouveau_runtime_pm == -1)
  return nouveau_is_optimus() || nouveau_is_v1_dsm();
 return nouveau_runtime_pm == 1;
}
