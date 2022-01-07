
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_smu_funcs {int dummy; } ;


 int kfree (struct pp_smu_funcs*) ;

void dcn21_pp_smu_destroy(struct pp_smu_funcs **pp_smu)
{
 if (pp_smu && *pp_smu) {
  kfree(*pp_smu);
  *pp_smu = ((void*)0);
 }
}
