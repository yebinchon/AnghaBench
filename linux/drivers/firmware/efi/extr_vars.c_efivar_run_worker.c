
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int efivar_work ;
 scalar_t__ efivar_wq_enabled ;
 int schedule_work (int *) ;

void efivar_run_worker(void)
{
 if (efivar_wq_enabled)
  schedule_work(&efivar_work);
}
