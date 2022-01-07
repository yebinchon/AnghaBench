
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct core_vmid {int num_vmid; scalar_t__* ptb_assigned_to_vmid; } ;



__attribute__((used)) static int get_existing_vmid_for_ptb(struct core_vmid *core_vmid, uint64_t ptb)
{
 int i;

 for (i = 0; i < core_vmid->num_vmid; i++) {
  if (core_vmid->ptb_assigned_to_vmid[i] == ptb)
   return i;
 }

 return -1;
}
