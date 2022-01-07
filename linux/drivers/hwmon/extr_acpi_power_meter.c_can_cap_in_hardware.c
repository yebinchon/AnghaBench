
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cap_in_hardware ;
 scalar_t__ force_cap_on ;

__attribute__((used)) static int can_cap_in_hardware(void)
{
 return force_cap_on || cap_in_hardware;
}
