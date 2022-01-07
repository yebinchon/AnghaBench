
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int resident_cpu ;

bool psci_tos_resident_on(int cpu)
{
 return cpu == resident_cpu;
}
