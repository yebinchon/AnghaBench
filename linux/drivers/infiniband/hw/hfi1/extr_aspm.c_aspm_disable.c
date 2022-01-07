
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int aspm_enabled; } ;


 scalar_t__ ASPM_MODE_ENABLED ;
 int aspm_hw_disable_l1 (struct hfi1_devdata*) ;
 scalar_t__ aspm_mode ;

__attribute__((used)) static void aspm_disable(struct hfi1_devdata *dd)
{
 if (!dd->aspm_enabled || aspm_mode == ASPM_MODE_ENABLED)
  return;

 aspm_hw_disable_l1(dd);
 dd->aspm_enabled = 0;
}
