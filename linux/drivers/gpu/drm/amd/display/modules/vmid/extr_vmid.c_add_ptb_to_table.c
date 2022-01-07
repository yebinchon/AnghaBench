
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct core_vmid {int num_vmids_available; int * ptb_assigned_to_vmid; } ;



__attribute__((used)) static void add_ptb_to_table(struct core_vmid *core_vmid, unsigned int vmid, uint64_t ptb)
{
 core_vmid->ptb_assigned_to_vmid[vmid] = ptb;
 core_vmid->num_vmids_available--;
}
