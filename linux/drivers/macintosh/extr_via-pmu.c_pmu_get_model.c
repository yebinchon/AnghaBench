
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pmu_kind ;

int
pmu_get_model(void)
{
 return pmu_kind;
}
