
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int ib_prio_to_core_prio(unsigned int priority, bool dont_trap)
{
 priority *= 2;
 if (!dont_trap)
  priority++;
 return priority;
}
