
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct core_vmid {int num_vmid; scalar_t__* ptb_assigned_to_vmid; } ;



__attribute__((used)) static int get_next_available_vmid(struct core_vmid *core_vmid)
{
 int i;

 for (i = 1; i < core_vmid->num_vmid; i++) {
  if (core_vmid->ptb_assigned_to_vmid[i] == 0)
   return i;
 }

 return -1;
}
