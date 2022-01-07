
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__* vmmouse_supported_hypervisors ;
 scalar_t__ x86_hyper_type ;

__attribute__((used)) static bool vmmouse_check_hypervisor(void)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(vmmouse_supported_hypervisors); i++)
  if (vmmouse_supported_hypervisors[i] == x86_hyper_type)
   return 1;

 return 0;
}
