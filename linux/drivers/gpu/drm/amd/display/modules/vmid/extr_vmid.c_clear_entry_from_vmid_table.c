
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct core_vmid {int num_vmids_available; scalar_t__* ptb_assigned_to_vmid; } ;



__attribute__((used)) static void clear_entry_from_vmid_table(struct core_vmid *core_vmid, unsigned int vmid)
{
 core_vmid->ptb_assigned_to_vmid[vmid] = 0;
 core_vmid->num_vmids_available++;
}
